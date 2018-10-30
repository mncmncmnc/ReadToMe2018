using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScreenCrossingTextController : MonoBehaviour {

	GameObject canvas;
	// Use this for initialization
	void Start () {
		canvas = GameObject.Find("Canvas");
		NodeServerManager.APIReturned += CreateNewText;
		CreateNewText();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void CreateNewText() {
		Debug.Log("Received word");
		//fullText.text = NodeServerManager.confirmedFullText + " " + NodeServerManager.currentPossibleText;
		GameObject text = Instantiate(Resources.Load<GameObject>("prefabs/TravelingText"));
		text.transform.SetParent(canvas.transform, false);
		RectTransform textRect = text.GetComponent<RectTransform>();
		switch(Random.Range(0,2)) {
			case 0:
				textRect.anchoredPosition = new Vector2(Screen.width * Random.value, (Screen.height / 2) + 100);
				textRect.Rotate(new Vector3(0,0,90));
				Debug.Log("Positioning Above");
				break;
			case 1:
				textRect.anchoredPosition = new Vector2(Screen.width * Random.value, -(Screen.height / 2) - 100);
				Debug.Log("Positioning Below");
				textRect.Rotate(new Vector3(0,0,-90));
				break;
		}
	}
}
