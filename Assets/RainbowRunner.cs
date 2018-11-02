using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class RainbowRunner : MonoBehaviour {

	public Text fullText;
	public RawImage backgroundColors;
	public Text currentWord;
	Texture2D backgroundTexture;
	List<string> coloredWords;

	// Use this for initialization
	void Start () {
		backgroundTexture = new Texture2D(128, 128);
		backgroundColors.texture = backgroundTexture;
		coloredWords = new List<string>();
		NodeServerManager.APIReturned += CheckNewWords;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void CheckNewWords() {
		fullText.text = NodeServerManager.confirmedFullText;
		string[] confirmedWords = NodeServerManager.GetConfirmedWords();
		foreach(string word in confirmedWords){
			ColorScheme wordColor = EmotionColorPicker.GetColorSchemeForWord(word);
			if(wordColor.colorName != "None" && coloredWords.IndexOf(word) == -1) {
				coloredWords.Add(word);
			}
		}
		currentWord.text = NodeServerManager.GetLastUnconfirmedWord();
		if(currentWord.text == "") {
			currentWord.text = NodeServerManager.GetLastConfirmedWord();
		}
		UpdateTextureColors();
	}
		

	void UpdateTextureColors(){
		Color[] pixelData = backgroundTexture.GetPixels();
		for(int i = 0; i < coloredWords.Count; i++) {
			ColorScheme curColor = EmotionColorPicker.GetColorSchemeForWord(coloredWords[i]);
			int numRows = 128 / coloredWords.Count;
			for(int j = 0; j < numRows; j++){
				for(int k = 0; k < 128; k++) {
					pixelData[(numRows *(i+j)) + k] = curColor.background;
				}
			}
		}
		backgroundTexture.SetPixels(pixelData);
		backgroundTexture.Apply();
	}
}
