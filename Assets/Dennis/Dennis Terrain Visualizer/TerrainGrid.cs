using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class TerrainGrid : MonoBehaviour {

    [SerializeField] int gridWidth;
    [SerializeField] float cellWidth;
    [SerializeField] float rotateSpeed = 1f;

    [SerializeField] Vector2 noiseSpeed = Vector2.one;
    [SerializeField] float noiseScale = 1f;
    [SerializeField] Vector2 noiseDetail = new Vector2(0.01f, 0.01f);

    [SerializeField] GameObject letterPrefab;

    GridPoint[,] gridPoints;

    Vector2 noiseTime = Vector2.zero;
    Vector2 noiseOffset;
    float currentNoiseValue { get { return MyMath.Map(Mathf.PerlinNoise(noiseTime.x + noiseOffset.x, noiseTime.y + noiseOffset.y), 0f, 1f, -noiseScale, noiseScale); } }

    float targetScale;

    LineRenderer m_LineRenderer { get { return GetComponent<LineRenderer>(); } }

    private void Awake() {
        // Initialize grid
        Vector3[,] grid = GridCreator.Create2DGrid(gridWidth, cellWidth, GridCreator.Axes.XZ);
        Vector3[] positionsForLineRenderer = new Vector3[gridWidth * gridWidth];
        gridPoints = new GridPoint[gridWidth, gridWidth];

        for (int i = 0; i < gridWidth; i++) {
            for (int j = 0; j < gridWidth; j++) {
                gridPoints[i, j] = new GridPoint(grid[i, j]);
                //gridPoints[i, j].targetPosition = gridPoints[i, j].position + Vector3.up * Random.Range(0f, 40f);
                positionsForLineRenderer[i * gridWidth + j] = gridPoints[i, j].position;

                //GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
                //cube.transform.parent = transform;
                //cube.transform.localPosition = gridPositions[i, j];
                //GameObject newLetter = Instantiate(letterPrefab);
                //newLetter.transform.parent = transform;
                //gridPoints[i, j].letter = newLetter;
            }
        }

        m_LineRenderer.positionCount = positionsForLineRenderer.Length;
        m_LineRenderer.SetPositions(positionsForLineRenderer);

        // Set up noise
        noiseOffset = Random.insideUnitCircle * 1000f;

        targetScale = noiseScale;

        NodeServerManager.APIReturned += ProcessWord;
    }

    float maxLoudness = 0;
    private void Update() {
        // Rotate
        transform.Rotate(Vector3.up, rotateSpeed * Time.deltaTime);

        Vector3[] positionsForLineRenderer = new Vector3[m_LineRenderer.positionCount];

        // Iterate through grid points
        noiseOffset.x = 0f;
        for (int i = 0; i < gridWidth; i++) {
            noiseOffset.y = 0f;
            for (int j = 0; j < gridWidth; j++) {
                // Use perlin noise to give grid point a new target.
                Vector3 newPosition = gridPoints[i, j].position;
                newPosition.y = currentNoiseValue;
                gridPoints[i, j].position = newPosition;

                //gridPoints[i, j].letter.transform.localPosition = gridPoints[i, j].position;

                // Move grid point towards its target
                //gridPoints[i, j].MoveTowardsTarget();
                
                // Update positions in line renderer.
                positionsForLineRenderer[i * gridWidth + j] = gridPoints[i, j].position;

                noiseOffset.y += noiseDetail.y;
            }

            noiseOffset.x += noiseDetail.x;
        }

        // Scramble line renderer connections.
        //System.Random random = new System.Random();
        //positionsForLineRenderer = positionsForLineRenderer.OrderBy(x => random.Next()).ToArray();
        m_LineRenderer.SetPositions(positionsForLineRenderer);

        if (Input.anyKeyDown) {
            ProcessWord(WordDataManager.GetDummyData());
        }

        // Iterate noise
        noiseTime += noiseSpeed * Time.deltaTime;

        // Move variables
        //rotateSpeed = rotateSpeed * 0.99f;
        if (rotateSpeed < 0) { rotateSpeed = 0; }
        targetScale = Mathf.Lerp(targetScale, 0f, 5f * Time.deltaTime);
        noiseScale = Mathf.Lerp(noiseScale, targetScale, 20f * Time.deltaTime);

        /*
        if (MicVolume.MicLoudness > maxLoudness) { maxLoudness = MicVolume.MicLoudness; }
        Debug.Log("max vloudness: " + maxLoudness);
        */
        targetScale = MyMath.Map(MicVolume.MicLoudness, 0f, 0.055f, 1f, 400f);
    }

    public void ProcessWord(WordDataManager.WordData wordData) {


        rotateSpeed += wordData.word.Length * 0f;

        for (int i = 0; i < wordData.word.Length; i++) {
            
        }
    }


    public void ProcessWord() {
        ProcessWord(new WordDataManager.WordData());
    }

    
    class GridPoint {
        public Vector3 position;
        public Vector3 targetPosition;
        //public GameObject letter;

        public GridPoint(Vector3 position) {
            this.position = position;
            targetPosition = position;
        }

        public void MoveTowardsTarget() {
            position = Vector3.Lerp(position, targetPosition, 0.9f * Time.deltaTime);
        }
    }    
}
