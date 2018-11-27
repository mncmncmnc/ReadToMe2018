using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubtleRandomRotation : MonoBehaviour {

    enum RandomMethod { PureRandom, PerlinNoise }
    [SerializeField] RandomMethod randomMethod = RandomMethod.PerlinNoise;

    // Maximum potential rotation for each axis:
	[SerializeField] float xMax = 0.001f;
    [SerializeField] float yMax = 0.001f;
    [SerializeField] float zMax = 0.001f;

    [SerializeField] Vector2 noiseSpeed = new Vector2(0.01f, 0.01f);
    Vector2 noiseTime = Vector2.zero;


    private void Update()
    {
        transform.rotation = GetNewRotation();
        noiseTime += noiseSpeed;
    }


    Quaternion GetNewRotation()
    {
        Vector3 newRotation = transform.rotation.eulerAngles;

        if (randomMethod == RandomMethod.PureRandom)
        {
            newRotation.x += Random.Range(-xMax, xMax);
            newRotation.y += Random.Range(-yMax, yMax);
            newRotation.z += Random.Range(-zMax, zMax);
        }

        else if (randomMethod == RandomMethod.PerlinNoise)
        {
            newRotation.x = MyMath.Map(Mathf.PerlinNoise(noiseTime.x, 0f), 0f, 1f, -xMax, xMax);
            newRotation.y = MyMath.Map(Mathf.PerlinNoise(noiseTime.y, 0f), 0f, 1f, -yMax, yMax);
            newRotation.y = MyMath.Map(Mathf.PerlinNoise(noiseTime.x + 1000, 0f), 0f, 1f, -zMax, zMax);
        }

        return Quaternion.Euler(newRotation);
    }
}
