using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TextFade : MonoBehaviour {

	Color color;
	public float speed = 0.25f;
	// Use this for initialization
	void Start () {
		color = GetComponent<TextMesh> ().color;
	}

	// Update is called once per frame
	void Update () {
		color.a = color.a - Time.deltaTime/speed;
		GetComponent<TextMesh> ().color = color;
		if (color.a < 0) {
			Destroy (gameObject);
		}
	}
}
