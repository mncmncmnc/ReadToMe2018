using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TextMovementTest : MonoBehaviour {

	RectTransform rectTransform;

	// Use this for initialization
	void Start () {
		rectTransform = GetComponent<RectTransform>();
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKey(KeyCode.LeftArrow)) {
			rectTransform.anchoredPosition -= new Vector2(5f * Time.deltaTime, 0.0f);
			Debug.Log(rectTransform.anchoredPosition);
		}
		else if(Input.GetKey(KeyCode.RightArrow)) {
			Debug.Log("Right Arrow");
		}	
	}
}
