using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectSpawner : MonoBehaviour {

    [SerializeField] float spawnRangeX = 7f;
    [SerializeField] float spawnTriggerSpeed = 25f;
    [SerializeField] float lightChangeSpeed = 0.1f;

    [SerializeField] GameObject objectPrefab;
    [SerializeField] GameObject[] models;
    [SerializeField] Light objectLight;
    [SerializeField] Light backgroundLight;
    [SerializeField] float bloomUnlockDuration = 8f;
    [SerializeField] float spinUnlockDuration = 5f;
    [SerializeField] float individualBloomUnlockDuration = 5f;
    float bloomUnlockTimer = 0f;

    [SerializeField] VertexModifier[] vertexModifiers;
    int spinUnlockIndex = 0;
    int bloomUnlockIndex = 0;

    Color objectLightTargetColor;
    Color backgroundLightTargetColor;

    GameObject lastSpawnedObject;

    float timer = 0f;
    float spawnTime = 5f;

    private void Awake() {
        vertexModifiers = FindObjectsOfType<VertexModifier>();
        NodeServerManager.APIReturned += ProcessWord;
    }

    private void Start() {
        //SpawnObject();

        objectLightTargetColor = objectLight.color;
        backgroundLightTargetColor = backgroundLight.color;
    }

    private void Update() {
        //if (Input.anyKeyDown) {
        //    ProcessWord(WordDataManager.GetDummyData());
        //}

        if (Input.GetKey(KeyCode.B)) {
            foreach(VertexModifier vertexModifier in vertexModifiers) {
                vertexModifier.currentPower = 1f;
                vertexModifier.isReadyToBloom = true;
                vertexModifier.blooming = true;
            }
        }

        if (Input.GetKey(KeyCode.R)) {
            foreach(VertexModifier vertexModifier in vertexModifiers) {
                vertexModifier.currentPower = 0f;
                vertexModifier.isReadyToBloom = false;
                vertexModifier.blooming = false;
                vertexModifier.runFinalBloomTimer = false;
            }

            bloomUnlockTimer = 0f;
        }

        objectLight.color = Color.Lerp(objectLight.color, objectLightTargetColor, lightChangeSpeed * Time.deltaTime);
        backgroundLight.color = Color.Lerp(backgroundLight.color, backgroundLightTargetColor, lightChangeSpeed * Time.deltaTime);

        int readyToBloom = 0;
        foreach (VertexModifier vertexModifier in vertexModifiers) {
            if (vertexModifier.isReadyToBloom) { readyToBloom++; }
        }

        if (readyToBloom >= 3) {
            // Run timer
            bloomUnlockTimer += Time.deltaTime;
            if (bloomUnlockTimer >= bloomUnlockDuration) {
                foreach(VertexModifier vertexModifier in vertexModifiers) { vertexModifier.runFinalBloomTimer = true; }
            }
        }

        else {
            bloomUnlockTimer = 0f;
            foreach (VertexModifier vertexModifier in vertexModifiers) {
                vertexModifier.isReadyToBloom = false;
                vertexModifier.runFinalBloomTimer = false;
                vertexModifier.blooming = false;
            }
        }
    }

    void SpawnObject() {
        GameObject newObject = Instantiate(objectPrefab);
        GameObject newModel = Instantiate(models[Random.Range(0, models.Length)]);
        newModel.transform.parent = newObject.transform;
        newModel.transform.localPosition = Vector3.zero;

        Vector3 newPosition = newObject.transform.position;
        newPosition += new Vector3(Random.Range(-spawnRangeX, spawnRangeX), 0f, 0f);
        newObject.transform.position = newPosition;

        lastSpawnedObject = newObject;
    }

    public void ProcessWord(WordDataManager.WordData wordData) {
        if (wordData.colorType != WordDataManager.WordData.ColorType.None) {
            Color gridLightColor = wordData.colorValue;
            float hue;
            float sat;
            float val;
            Color.RGBToHSV(gridLightColor, out hue, out sat, out val);
            hue = MyMath.Wrap01(hue + 0.5f);
            sat = Mathf.Clamp01(sat + 0.5f);
            val = Mathf.Clamp01(val + 0.5f);

            objectLightTargetColor = Color.HSVToRGB(hue, sat, val);
            backgroundLightTargetColor = wordData.colorValue;
        }

        if (lastSpawnedObject != null) {
            //if (lastSpawnedObject.GetComponent<VertexModifier>().currentPower >= spawnTriggerSpeed) {
                //SpawnObject();
            //}
        }
    }

    void ProcessWord() {
        ProcessWord(new WordDataManager.WordData());
    }
}
