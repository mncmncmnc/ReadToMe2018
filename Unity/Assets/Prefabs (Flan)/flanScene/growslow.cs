using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class growslow : MonoBehaviour {

	int speedDivider = 200;

	// Use this for initialization
	void Start () {

	}

	// Update is called once per frame
	void Update () {
		//	int rand = Random.Range (10, 20);
		gameObject.transform.localScale += new Vector3 (0, 1, 0) * Time.deltaTime/speedDivider;
	}
}
