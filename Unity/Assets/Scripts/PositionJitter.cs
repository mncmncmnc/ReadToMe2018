using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PositionJitter : MonoBehaviour {

    [SerializeField] Vector3 maxDifference;
    [SerializeField] bool lockToOriginalPosition;

    Vector3 originalPosition;

    private void Awake() {
        originalPosition = transform.localPosition;
    }

    private void Update() {
        Vector3 newPosition = transform.localPosition;
        if (lockToOriginalPosition) newPosition = originalPosition;
        newPosition += new Vector3(Random.Range(-maxDifference.x, maxDifference.x), Random.Range(-maxDifference.y, maxDifference.y), Random.Range(-maxDifference.z, maxDifference.z)) * Time.deltaTime;
        transform.localPosition = newPosition;
    }
}
