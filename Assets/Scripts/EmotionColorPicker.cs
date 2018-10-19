using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class EmotionColorPicker : MonoBehaviour {

	Dictionary<string, Color> colorCodes;
	Dictionary<string, Color> wordList;
	
	// Use this for initialization
	void Start () {
		CreateColorCodeDict();
		wordList = new Dictionary<string, Color>();
		TextAsset lexicon = Resources.Load<TextAsset>("colorLexicon");
		string[] lines = lexicon.text.Split("\n".ToCharArray());
		for(int i = 0; i < lines.Length; i++) {
			string[] chunks = lines[i].Split("\t".ToCharArray());
			string word = chunks[0].Substring(0, chunks[0].IndexOf("-"));
			string color = chunks[1].Substring(chunks[1].IndexOf("=") + 1);
			try {
				wordList.Add(word, colorCodes[color]);
			}
			catch { //Debug.Log(word);
			}
		}
			
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void UpdateBackgroundColor(string word) {
		Color newColor = Camera.main.backgroundColor;
		if(wordList.TryGetValue(word, out newColor)) {
			Camera.main.backgroundColor = newColor;
			Debug.Log("Background updated");
		}
		else {
			Debug.Log(word + " not found in dict");
		}
	}

	void CreateColorCodeDict() {
		colorCodes = new Dictionary<string, Color>();
		TextAsset colorCodeFile = Resources.Load<TextAsset>("backgroundFontColors");
		string[] lines = colorCodeFile.text.Split("\n".ToCharArray());
		try {
			colorCodes.Add("white", ParseColorFromFile(lines[0]));
			colorCodes.Add("black", ParseColorFromFile(lines[1]));
			colorCodes.Add("red", ParseColorFromFile(lines[2]));
			colorCodes.Add("green", ParseColorFromFile(lines[3]));
			colorCodes.Add("yellow", ParseColorFromFile(lines[4]));
			colorCodes.Add("blue", ParseColorFromFile(lines[5]));
			colorCodes.Add("grey", ParseColorFromFile(lines[6]));
			colorCodes.Add("brown", ParseColorFromFile(lines[7]));
			colorCodes.Add("pink", ParseColorFromFile(lines[8]));
			colorCodes.Add("purple", ParseColorFromFile(lines[9]));
			colorCodes.Add("orange", ParseColorFromFile(lines[10]));
			colorCodes.Add("None", ParseColorFromFile(lines[11]));
		}
		catch {
			Debug.Log("Error parsing color file");
		}
	}

	Color ParseColorFromFile(string dataString) {
		dataString = dataString.Replace(" ", string.Empty);
		string hexCode = dataString.Substring(0,dataString.IndexOf(","));
		Color newColor;
		ColorUtility.TryParseHtmlString(hexCode, out newColor);
		return newColor;
	}
}
