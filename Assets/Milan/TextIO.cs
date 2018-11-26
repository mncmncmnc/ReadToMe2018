using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.IO;

public class TextIO : MonoBehaviour {

	public static bool newWord;
	public static bool newConfirmedWord;
	public static bool newUnconfirmedWord;
	public float speed;
	public Font[] fonts;

	public int unconfirmedCount;
	public int confirmedCount;

	public TextAsset sourceText;

	public string lineBreak;
	string[] formattedText;

	public static bool useVoice;

	string[][] canto;
	string[] line;
	public Writer textWriter;
	TextDisplayController textDisplay;
	float time;
	public float interval = 0.25f; //interval to change words at
	public static int wordCount; //how far the words are going
	public static int lineCount;
	string lineToDelete;
	float letterSpacing = 1;
	Vector3 lastWordPos;

	public static int count;
	public static string lastWord;
	/*

	 * box of 600x400 fits 1254 chara at 14pt 2 in Space Mono
	 * 66 chara per line, 19 lines
	 *
	 */

	// Use this for initialization
	void Start () {
        NodeServerManager.APIReturned += NextWord;
        useVoice = true;
        count = 0;

		textDisplay = GetComponent<TextDisplayController>();
		formattedText = sourceText.text.Split("\n"[0]);
		canto = new string[formattedText.Length][];
		lastWordPos = transform.position;

		bool scanning = true;
		int j = 0;
		int k = 0;

		while (scanning) {
			line = formattedText [j].Split(new char[] { ' ' });
//				int injectionIndex = line [k].Length / insertedText.Length;
//				Debug.Log (line);
//				for(int i = 0; i < insertedText.Length; i++){
//					line [i * injectionIndex] += insertedText [i];
//				}
			canto[j] = line;

//				k++;

//			else{
//				if (formattedText [j].Length > 5) {
//					canto[k] += injectedText;
//				}
//				canto [k] += formattedText [j];
//			}

			j++;

			if (j >= formattedText.Length) {
				scanning = false;
			}
		}

	}

	// Update is called once per frame
	void Update () {
    
		//if ((useVoice && NodeServerManager.GetConfirmedWords().Length != confirmedCount)){
		//		confirmedCount = NodeServerManager.GetConfirmedWords().Length;
		//		NextWord();
		//		newConfirmedWord = true;
		//}else if ((useVoice && NodeServerManager.GetUnconfirmedWords().Length != unconfirmedCount)){
		//		unconfirmedCount = NodeServerManager.GetUnconfirmedWords().Length;
		//		NextWord();
		//		newUnconfirmedWord = true;


		//}else if(interval < 0 && !useVoice){
		//			NextWord();
		//			interval = Random.Range(0.1f, speed);
  //          newWord = true;
  //      }
  //      else{
		//	newUnconfirmedWord = false;
		//	newConfirmedWord = false;
		//	newWord = false;
		//}

		// float perlin = Mathf.PerlinNoise((float)count/3f,(float)count/3f);
		// sphere.localScale = Vector3.Lerp(sphere.localScale, Mathf.Pow(Mathf.Clamp01(Mathf.Sin((float)count/3f) + 1.5f), 3f) * 30f * Vector3.one, Time.deltaTime * 3);
		// // sphere.localScale = Vector3.Lerp(sphere.localScale, Vector3.zero, Time.deltaTime * 2);
		// Camera.main.transform.position = Vector3.Lerp(Camera.main.transform.position, Vector3.forward * (3f * Time.time + 1f), Time.deltaTime * 2);
		// if ((useVoice && NodeServerManager.GetLastUnconfirmedWord() != lastWord) || (interval < 0 && !useVoice)){
		// 	lastWord = NodeServerManager.GetLastUnconfirmedWord();
		// 	NextWord();
		// 	interval = Random.Range(0.1f, speed);
		// 	// sphere.localScale = MicVolume.MicLoudness * Vector3.one * 100;
		// }

		interval -= Time.deltaTime;

	}

	public void NextWord(){
    
		if ((useVoice && wordCount >= 10) || wordCount >= canto [lineCount % canto.Length].Length) {

			textDisplay.fullText.text += "\n";

			GUIStyle height_calculator = new GUIStyle();
			GUIContent guiTextContent = new GUIContent(textDisplay.fullText.text);

			float textWidth = textDisplay.fullText.preferredWidth;
			float textHeight = height_calculator.CalcHeight(guiTextContent , textWidth);

			if(textHeight > 50){
			bool delete = true;
			int charIndex = 0;
			while(delete){
				if(charIndex >= textDisplay.fullText.text.Length ||  textDisplay.fullText.text[charIndex] == '\n' || charIndex > 100){
					if(textDisplay.fullText.text[charIndex + 1] != '\n'){
					charIndex++;
					}
						delete = false;
				}else{
					charIndex++;
				}
			}
			// textDisplay.fullText.text
			textDisplay.fullText.text = textDisplay.fullText.text.Substring(charIndex, textDisplay.fullText.text.Length - charIndex);
		}

			wordCount = 0;
			lineCount++;
		}

			//if(useVoice){

                confirmedCount = NodeServerManager.GetConfirmedWords().Length;
                textDisplay.fullText.text += NodeServerManager.GetLastConfirmedWord() + " ";
		
                unconfirmedCount = NodeServerManager.GetUnconfirmedWords().Length;
                textDisplay.GetComponent<Text>().text = NodeServerManager.GetLastUnconfirmedWord();
			//}else{
				
			//	lastWord = canto[lineCount][wordCount];
			//	textDisplay.GetComponent<Text>().text =  canto[lineCount][wordCount];
			//	textDisplay.fullText.text += canto[lineCount][wordCount] + " ";
			//}

			// textDisplay.fullText.text
			// textDisplay.GetComponent<Text>().text =  canto[lineCount][wordCount];
		// 	Font curFont = fonts [Random.Range (0, fonts.Length)];
		// 	newWord.GetComponent<TextMesh> ().font = curFont;
		// 	curFont = fonts [Random.Range(0, fonts.Length)];
		// 	if (newWord.GetComponent<TextMesh> ().font == curFont) {
		// 	}
		// 	newWord.GetComponent<Renderer> ().sharedMaterial = curFont.material;
		// 	newWord.AddComponent<BoxCollider2D> ();
		// 	newWord.GetComponent<BoxCollider2D> ().isTrigger = true;
		// 	lastWord.x += newWord.GetComponent<BoxCollider2D> ().bounds.size.x + letterSpacing;
		// 	if(canto[lineCount % canto.Length][wordCount].Contains(lineBreak)){
		// 		newWord.transform.localScale *= 5;
		// 		curFont = fonts [4];
		// 		newWord.GetComponent<TextMesh> ().font = curFont;
		// 		newWord.GetComponent<Renderer> ().sharedMaterial = curFont.material;
		// 	}
			wordCount++;
			count++;

	}

    private void LateUpdate()
    {
        textDisplay.GetComponent<Text>().color = Color.white;
        textDisplay.fullText.color = Color.white;
        Camera.main.backgroundColor = Color.black;
    }
}
