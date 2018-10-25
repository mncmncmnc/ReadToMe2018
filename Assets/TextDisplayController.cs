using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TextDisplayController : MonoBehaviour {

	Text displayText;
	public Text fullText;
	public float transitionTime = 1;
	bool transitioningBackgroundColor;

	// Use this for initialization
	void Start () {
		displayText = GetComponent<Text>();
		transitioningBackgroundColor = false;
	}
	
	// Update is called once per frame
	void Update () {
		fullText.text = NodeServerManager.confirmedFullText + " " + NodeServerManager.currentPossibleText;
		if(!transitioningBackgroundColor) {
			string[] separatedWords = fullText.text.Split(" ".ToCharArray());
			string currentWord = separatedWords[separatedWords.Length - 1];
			displayText.text = currentWord;
			if(currentWord != "")
				StartCoroutine(LerpColors(EmotionColorPicker.GetColorSchemeForWord(currentWord)));
		}
	}

	IEnumerator LerpColors(ColorScheme newColorScheme) {
		transitioningBackgroundColor = true;
		Color oldBackgroundColor = Camera.main.backgroundColor;
		Color oldTextColor = displayText.color;
		for(float t = 0; t < transitionTime; t += Time.deltaTime) {
			Camera.main.backgroundColor = Color.Lerp(oldBackgroundColor, newColorScheme.background, t / transitionTime);
			displayText.color = Color.Lerp(oldTextColor, newColorScheme.font, t / transitionTime);
			fullText.color = Color.Lerp(oldTextColor, newColorScheme.font, t / transitionTime);
			yield return null;
		}
		Camera.main.backgroundColor = newColorScheme.background;
		displayText.color = newColorScheme.font;
		fullText.color = newColorScheme.font;
		transitioningBackgroundColor = false;
	}
}
