using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class EmotionColorPicker : MonoBehaviour {

	Dictionary<string, Color> colorCodes;
	static Dictionary<string, ColorScheme> wordList;
	public float transitionTime = 1;
	
	// Use this for initialization
	void Awake () {
		wordList = new Dictionary<string, ColorScheme>();
		TextAsset lexicon = Resources.Load<TextAsset>("colorLexicon");
		string[] lines = lexicon.text.Split("\n".ToCharArray());
		for(int i = 0; i < lines.Length; i++) {
			string[] chunks = lines[i].Split("\t".ToCharArray());
			string word = chunks[0].Substring(0, chunks[0].IndexOf("-"));
			string color = chunks[1].Substring(chunks[1].IndexOf("=") + 1);
			try {
				wordList.Add(word, GetColorFromPrefs(color));
			}
			catch { //Debug.Log(word);
			}
		}
	}

	public static ColorScheme GetColorSchemeForWord(string word) {
		ColorScheme newColorScheme = new ColorScheme("None", Camera.main.backgroundColor, Color.black);
		if(wordList.TryGetValue(word.ToLower(), out newColorScheme)) {
			Debug.Log("Found color scheme");
		}
		else {
			Debug.Log(word.ToLower() + " not found in dict");
			newColorScheme.colorName = "error";
		}
		return newColorScheme;
	}

	ColorScheme GetColorFromPrefs(string colorName) {
		Color backgroundColor = new Color();
		Color fontColor = new Color();
		string hexCode = PlayerPrefs.GetString(colorName, "error");
		if(hexCode == "error") {
			Debug.LogError("No Colors have been set, have you run the ColorConfig scene?");
		}
		ColorUtility.TryParseHtmlString(hexCode, out backgroundColor);
		hexCode = PlayerPrefs.GetString(colorName + "Font");
		ColorUtility.TryParseHtmlString(hexCode, out fontColor);
		return new ColorScheme(colorName, backgroundColor, fontColor);
	}

	
}

public struct ColorScheme {
		public string colorName;
		public Color background, font;

		public ColorScheme(string colorNameString, Color backgroundColor, Color fontColor){
			colorName = colorNameString;
			background = backgroundColor;
			font = fontColor;
		}
	}
