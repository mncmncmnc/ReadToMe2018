using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class RainbowRunner : MonoBehaviour {

	public Text fullText;
	public RawImage backgroundColors;
	public Text currentWord;
	Texture2D backgroundTexture;
	public int textureSize;
	List<string> coloredWords;

	// Use this for initialization
	void Start () {
		backgroundTexture = new Texture2D(textureSize, textureSize);
		backgroundColors.texture = backgroundTexture;
		coloredWords = new List<string>();
		NodeServerManager.APIReturned += CheckNewWords;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void CheckNewWords() {
		fullText.text = NodeServerManager.confirmedFullText + " " + NodeServerManager.currentPossibleText;
		string[] confirmedWords = NodeServerManager.GetConfirmedWords();
		foreach(string word in confirmedWords){
			ColorScheme wordColor = EmotionColorPicker.GetColorSchemeForWord(word);
			if(word != "" && wordColor.colorName != "None" && wordColor.colorName != "error" && 
										coloredWords.IndexOf(word) == -1) {
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
		if(coloredWords.Count == 0) return;
		Color[] pixelData = backgroundTexture.GetPixels();
		int iterator = pixelData.Length - 1;
		int numRows = textureSize / coloredWords.Count;
		for(int i = 0; i < coloredWords.Count; i++) {
			ColorScheme curColor = EmotionColorPicker.GetColorSchemeForWord(coloredWords[i]);
			Debug.Log(curColor.colorName);
			for(int j = 0; j < numRows; j++){
				for(int k = 0; k < textureSize; k++) {
					pixelData[iterator] = curColor.background;
					iterator--;
				}
			}
		}
		backgroundTexture.SetPixels(pixelData);
		backgroundTexture.Apply();
	}
}
