using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ColorSetter : MonoBehaviour {

	public static string[] backgroundColors = new string[]{ "white", "black", "red", "green", "yellow", "blue", "grey", "brown", "pink", "purple", "orange", "None"};
	int curIndex = 0;
	Image background;
 	Text testString;
	GameObject colorPicker;

	// Use this for initialization
	void Start () {
		testString = GetComponentInChildren<Text>();
		background = GetComponent<Image>();
		colorPicker = transform.parent.GetChild(1).gameObject;
		colorPicker.SetActive(false);

		//SetDefaultColors();
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
		if(Input.GetKeyDown(KeyCode.C)) {
			colorPicker.SetActive(true);
			colorPicker.GetComponent<ColorWheelControl>().Selection = background.color;
		}
		else if(Input.GetKey(KeyCode.C)) {
			background.color = colorPicker.GetComponent<ColorWheelControl>().Selection;
		}
		else if(Input.GetKeyUp(KeyCode.C)) {
			colorPicker.SetActive(false);
			SaveColor(testString.text, background.color);
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

	void SaveColor(string colorName, Color newColor) {
		Debug.Log(ColorUtility.ToHtmlStringRGB(newColor));
		PlayerPrefs.SetString(colorName, "#" + ColorUtility.ToHtmlStringRGB(newColor));
		PlayerPrefs.Save();
	}
}
