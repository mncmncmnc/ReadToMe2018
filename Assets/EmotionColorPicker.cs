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
			wordList.Add(word, colorCodes[color]);
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
		colorCodes.Add("white", Color.white);
		colorCodes.Add("black", Color.black);
		colorCodes.Add("red", Color.red);
		colorCodes.Add("green", Color.green);
		colorCodes.Add("yellow", Color.yellow);
		colorCodes.Add("blue", Color.blue);
		colorCodes.Add("grey", Color.grey);
		colorCodes.Add("brown", new Color(165 / 255, 42 / 255, 42 / 255));
		colorCodes.Add("pink", new Color(1.0f, 192 / 255, 203 / 255));
		colorCodes.Add("purple", new Color(0.5f, 0, 0.5f));
		colorCodes.Add("orange", new Color(1.0f, 0.55f, 0.0f));
		colorCodes.Add("None", Color.clear);
	}
}
