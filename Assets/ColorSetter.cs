using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ColorSetter : MonoBehaviour {

	public static string[] backgroundColors = new string[]{ "white", "black", "red", "green", "yellow", "blue", "grey", "brown", "pink", "purple", "orange", "None"};
	int curIndex = 0;
	Image background;
 	Text testString;

	// Use this for initialization
	void Start () {
		testString = GetComponentInChildren<Text>();
		background = GetComponent<Image>();

		SetDefaultColors();
		UpdateColor();
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.LeftArrow)) {
			if(curIndex > 0) curIndex--;
			else curIndex = backgroundColors.Length - 1;
			UpdateColor();
		}
		if(Input.GetKeyDown(KeyCode.RightArrow)) {
			if(curIndex < backgroundColors.Length - 1) curIndex++;
			else curIndex = 0;
			UpdateColor();
		}
	}

	void UpdateColor() {
		string newColorString = backgroundColors[curIndex];
		Color newColor;
		ColorUtility.TryParseHtmlString(PlayerPrefs.GetString(newColorString), out newColor);
	 	background.color = newColor;
		testString.text = newColorString;
	}

	public void SetDefaultColors() {
		PlayerPrefs.SetString("white","#FFFFFF");
		PlayerPrefs.SetString("black","#000000");
		PlayerPrefs.SetString("red","#FF0000");
		PlayerPrefs.SetString("green","#00FF00");
		PlayerPrefs.SetString("yellow","#FFFF00");
		PlayerPrefs.SetString("blue","#0000FF");
		PlayerPrefs.SetString("grey","#AAAAAA");
		PlayerPrefs.SetString("brown","#a52A2A");
		PlayerPrefs.SetString("pink","#FFC0CB");
		PlayerPrefs.SetString("purple","#800080");
		PlayerPrefs.SetString("orange","#FFa500");
		PlayerPrefs.SetString("None","#888888");
	}
}
