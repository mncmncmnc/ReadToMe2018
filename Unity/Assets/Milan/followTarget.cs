using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class followTarget : MonoBehaviour {
	public Transform target;
	Vector3 offset;
	// Use this for initialization
	void Start () {
		offset = Vector3.up * Random.Range(-8f, 8f);
	}

	// Update is called once per frame
	void Update () {
		transform.position = target.position + offset;
	}
}
