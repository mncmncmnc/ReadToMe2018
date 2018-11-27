using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class VertexModifier : MonoBehaviour {

    [SerializeField] public float currentPower = 1f;
    [SerializeField] float powerIncreaseFactor = 0.1f;
    [SerializeField] float powerDecreaseFactor = 0.99f;
    [SerializeField] float bloomThreshold = 0.75f;
    [SerializeField] float powerDecreaseTime = 1.5f;
    float powerDecreaseTimer = 0f;

    [SerializeField] float minRotateSpeed = 0.1f;
    [SerializeField] float maxRotateSpeed = 250f;
    [SerializeField] float maxRotateSpeedBloom = 500f;

    [SerializeField] float minNoiseScale = 0.1f;
    [SerializeField] float maxNoiseScale = 1f;
    [SerializeField] float maxNoiseScaleBloom = 5f;

    [SerializeField] float minAlpha = 1f;
    [SerializeField] float maxAlpha = 1f;
    [SerializeField] float maxAlphaBloom = 0.2f;

    [SerializeField] float rotateSpeed = 0.1f;

    [SerializeField] Vector2 noiseSpeed = Vector2.one;
    [SerializeField] float noiseScale = 0.1f;
    [SerializeField] Vector2 noiseDetail = new Vector2(0.01f, 0.01f);

    [SerializeField] Material material;

    [SerializeField] float movementThreshold = 0f;

    [SerializeField] float bloomTime = 1f;
    float bloomTimer = 0f;

    public bool isReadyToBloom = false;
    public bool runFinalBloomTimer = false;

    public float finalBloomTime = 5f;
    float finalBloomTimer = 0f;

    Vector3 rotationAxis;

    Mesh m_Mesh { get { return GetComponentInChildren<MeshFilter>().mesh; } }
    Transform child { get { return transform.GetChild(0); } }
    float materialAlpha {
        get { return GetComponentInChildren<MeshRenderer>().material.color.a; }
        set {
            Color newColor = GetComponentInChildren<MeshRenderer>().material.color;
            newColor.a = value;
            newColor.a = Mathf.Clamp01(newColor.a);
            GetComponentInChildren<MeshRenderer>().material.color = newColor;
        }
    }

    Vector3[] originalVertices;

    Vector2 noiseTime = Vector2.zero;
    Vector2 noiseOffset;
    float currentNoiseValue { get { return MyMath.Map(Mathf.PerlinNoise(noiseTime.x + noiseOffset.x, noiseTime.y + noiseOffset.y), 0f, 1f, -noiseScale, noiseScale); } }

    float targetNoiseScale;
    bool startDeforming;


    private void Awake()
    {
        NodeServerManager.APIReturned += ProcessWord;
    }


    private void Start() {
        // Set up noise
        noiseOffset = Random.insideUnitCircle * 1000f;

        originalVertices = m_Mesh.vertices;

        targetNoiseScale = noiseScale;

        rotationAxis = Vector3.Normalize(Random.rotation.eulerAngles);

        child.localRotation = Random.rotation;

        child.GetComponent<MeshRenderer>().material = material;
    }


    float cooldownTimer = 0f;
    float cooldownTime = 0.4f;

    private void Update() {
        cooldownTimer += Time.deltaTime;

        if (Input.GetKeyDown(KeyCode.Q)) { ProcessWord(WordDataManager.GetDummyData()); } 

        // Rotate
            child.Rotate(Vector3.up, rotateSpeed * Time.deltaTime, Space.World);
            child.Rotate(rotationAxis, rotateSpeed * 0.2f * Time.deltaTime, Space.World);

        // Iterate through mesh vertices
        Vector3[] vertices = m_Mesh.vertices;
        noiseOffset.x = 0f;
        for (int i = 0; i < m_Mesh.vertices.Length; i++) {
            Vector3 newPosition = originalVertices[i];
            newPosition = child.TransformPoint(newPosition);

            noiseOffset.x = newPosition.x * noiseDetail.x;
            noiseOffset.y = newPosition.z * noiseDetail.y;

            Vector3 noiseDirection = Vector3.Normalize(transform.position - newPosition);
            newPosition += noiseDirection * currentNoiseValue;

            newPosition = child.InverseTransformPoint(newPosition);

            vertices[i] = newPosition;
        }

        m_Mesh.vertices = vertices;
        m_Mesh.RecalculateBounds();

        // Iterate noise
        noiseTime += noiseSpeed * Time.deltaTime;


        // Decrease Power
        powerDecreaseTimer += Time.deltaTime;
        if (powerDecreaseTimer >= powerDecreaseTime) {
            currentPower *= powerDecreaseFactor;
            bloomTimer = 0f;
        }

        // See if we are blooming
        if (!blooming) {
            // Check to see if I should start to bloom
            if (!blooming && currentPower >= bloomThreshold * 0.9f) {
                bloomTimer += Time.deltaTime;
                if (bloomTimer >= bloomTime) {
                    blooming = true;
                }
            }

            else {
                bloomTimer = Mathf.Clamp(bloomTimer - Time.deltaTime, 0f, bloomTime);
            }

            currentPower = Mathf.Clamp(currentPower, 0f, bloomThreshold);

            rotateSpeed = MyMath.Map(currentPower, 0, bloomThreshold, minRotateSpeed, maxRotateSpeed);
            noiseScale = MyMath.Map(currentPower, 0, bloomThreshold, minNoiseScale, maxNoiseScale);
            materialAlpha = MyMath.Map(currentPower, 0, bloomThreshold, minAlpha, maxAlpha);
        }

        else if (blooming) {
            currentPower = Mathf.Clamp(currentPower, 0f, 1f);

            rotateSpeed = MyMath.Map(currentPower, bloomThreshold, 1f, maxRotateSpeed, maxRotateSpeedBloom);
            noiseScale = MyMath.Map(currentPower, bloomThreshold, 1f, maxNoiseScale, maxNoiseScaleBloom);
            materialAlpha = MyMath.Map(currentPower, bloomThreshold, 1f, maxAlpha, maxAlphaBloom);

            // See if we should stop blooming
            if (currentPower < bloomThreshold * 0.95f) {
                blooming = false;
            }
        }

    }

    public void ProcessWord(WordDataManager.WordData wordData) {
        if (cooldownTimer < cooldownTime) { return; }
        currentPower += 0.01f;
        currentPower *= 1 + (wordData.word.Length * powerIncreaseFactor) * Time.deltaTime;
        currentPower = Mathf.Clamp01(currentPower);
        targetNoiseScale = MyMath.Map(wordData.volume, 0f, 1f, 50f, 400f);
        powerDecreaseTimer = 0f;
        cooldownTimer = 0f;
    }

    public void ProcessWord() {
        ProcessWord(new WordDataManager.WordData());
    }

    public bool blooming;
    IEnumerator FadeOut() {

        targetNoiseScale = 0f;
        yield return new WaitUntil(() => {
            if (materialAlpha > 0f) {
                materialAlpha = Mathf.Lerp(materialAlpha, 0f, 3f * Time.deltaTime);
                targetNoiseScale = MyMath.Map(materialAlpha, 1f, 0f, 0f, maxNoiseScale);
                noiseSpeed.x = MyMath.Map(materialAlpha, 1f, 0f, 0f, 0.01f);
                noiseSpeed.y = MyMath.Map(materialAlpha, 1f, 0f, 0f, 0.02f);
                noiseDetail.x = MyMath.Map(materialAlpha, 1f, 0f, 0f, 1f);
                noiseDetail.y = MyMath.Map(materialAlpha, 1f, 0f, 0f, 1f);
                //Debug.Log("alpha: " + materialAlpha);
                return false;
            }

            else {
                return true;
            }
        });

        Destroy(gameObject);

        yield return null;
    }
}
