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
		NodeServerManager.APIReturned += UpdateText;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void UpdateText() {
		// Fill out text as it comes in
		fullText.text = NodeServerManager.confirmedFullText + " " + NodeServerManager.currentPossibleText;
		// Prevent ourselves from transitioning mid transition
		if(!transitioningBackgroundColor) {
			// Cut words into an arry and then look at last word of array
			string[] separatedWords = fullText.text.Split(" ".ToCharArray());
			string currentWord = separatedWords[separatedWords.Length - 1];
			if(currentWord != ""){
				displayText.text = currentWord;
				ColorScheme newScheme = EmotionColorPicker.GetColorSchemeForWord(currentWord);
				if(newScheme.colorName != "error") {
					StartCoroutine(LerpColors(newScheme));
				}
			}
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

	void OnDisable() {
		NodeServerManager.APIReturned -= UpdateText;
	}
}
