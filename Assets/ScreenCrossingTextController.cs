using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScreenCrossingTextController : MonoBehaviour {

	GameObject canvas;
	// Use this for initialization
	void Start () {
		canvas = GameObject.Find("Canvas");
		NodeServerManager.APIReturned += CreateNewText;
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.A)) CreateNewText();
	}

	void CreateNewText() {
		Debug.Log("Received word");
		GameObject text = Instantiate(Resources.Load<GameObject>("prefabs/TravelingText"));
		text.transform.SetParent(canvas.transform, false);
		RectTransform textRect = text.GetComponent<RectTransform>();
		ScreenCrossingText crossingText = text.GetComponent<ScreenCrossingText>();
		switch(Random.Range(0,4)) {
			case 0:
				textRect.anchoredPosition = new Vector2(Screen.width * Random.value, (Screen.height / 2) + 100);
				crossingText.InitializeTravel(90, 5);
				break;
			case 1:
				textRect.anchoredPosition = new Vector2(Screen.width * Random.value, -(Screen.height / 2) - 100);
				crossingText.InitializeTravel(-90, 5);
				break;
			case 2:
				textRect.anchoredPosition = new Vector2(-(Screen.width / 2) - 100, Screen.height * Random.value );
				crossingText.InitializeTravelWithVector(0, 5, new Vector2(1,0));
				break;
			case 3:
				textRect.anchoredPosition = new Vector2((Screen.width / 2) + 100, Screen.height * Random.value );
				crossingText.InitializeTravelWithVector(0, 5, new Vector2(-1, 0));
				break;
		}
		crossingText.SetText(NodeServerManager.GetLastConfirmedWord());
	}
}
