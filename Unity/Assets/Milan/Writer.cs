using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class Writer : MonoBehaviour {

	private static Writer instance = null;

	public static Writer Instance {
		get {
			return instance;
		}
	}
	public GameObject wordPrefab;
	public Color textColor = Color.white;
	public float lineLength = 50;
	public float tracking = 0.25f;
	public float leading = 1;
	public Font[] fonts;
	public bool fade, noRotation, delete, WordbyWord;
	public bool Gibberish;
	public float delay;
	public float fadeSpeed;
	public TextAsset sourceText;
	Vector3 originalPos;
	Vector3 	spawnPosition;

	string[][]	_script;
	int 		wordIndex, lineIndex;
	int 		stringIndex;

	List<GameObject> currentText;

	void Awake() {

		if (instance != null && instance != this) {
			Destroy(this.gameObject);
		} else {
			instance = this;
		}


		currentText = new List<GameObject> ();
		originalPos = transform.position;
		wordIndex = 0;
		lineIndex = 0;
		stringIndex = 0;
		spawnPosition = transform.position;

		if(sourceText != null){
		string[] tempText = sourceText.text.Split(new char[] { '\n' });
		_script = new string[tempText.Length][];

		for (int i = 0; i < tempText.Length; i++) {
				_script [i] = tempText [i].Split (new char[] { ' ' });
		}
		}
	}

	public string[]GetCurrentString(){
		return _script[stringIndex % _script.Length];
	}

	public void SetAndSplitString(string input){
		if (input != null) {
			_script[stringIndex] = input.Split (new char[] { ' ' });
		}
	}

	public void SetString(string[] input){
		_script[stringIndex] = input;
	}

	public IEnumerator WriteText(){

		string line = "";

		foreach (string s in _script [stringIndex % _script.Length]) {
			line += s + " ";
			yield return new WaitForSeconds (delay);
		}

		GetComponent<TextMesh> ().text = line;
		stringIndex++;

		//deprecated code for spawning individual gameObjects for words.
//		foreach (string s in _script [stringIndex]) {
//			CreateWord (spawnPosition);
//			yield return new WaitForSeconds (delay);
//		}
	}

	public void WriteWord(){
		if (wordIndex > _script [stringIndex % _script.Length].Length -1) {
			GetComponent<TextMesh> ().text = "";
			stringIndex++;
			wordIndex = 0;
		}

		transform.LookAt (GameObject.Find ("Player").transform);

		GetComponent<TextMesh> ().text += _script [stringIndex % _script.Length][wordIndex] + " ";
		wordIndex++;
	}

	void UsedByPlayer() {
		if (WordbyWord) {
			WriteWord ();
		} else {
			StartCoroutine (WriteText ());
		}
	}

	public GameObject CreateWord(Vector3 pos, string word){
		GameObject newWord = (GameObject)Instantiate (wordPrefab, pos, Quaternion.identity);
		newWord.GetComponent<TextMesh>().text = word;

		Font curFont = fonts [Random.Range (0, fonts.Length)];
		newWord.GetComponent<TextMesh>().font = curFont;
		newWord.GetComponent<TextMesh> ().color = textColor;

		if(!Gibberish){
			newWord.GetComponent<Renderer> ().sharedMaterial = curFont.material;
		}

//		newWord.AddComponent<BoxCollider2D> ();

		// spawnPosition.x += newWord.GetComponent<BoxCollider> ().bounds.size.x + tracking;

		currentText.Add (newWord);
		wordIndex++;

		// checkIndex ();

		return newWord;
	}

	void checkIndex(){
		if (wordIndex >= _script [stringIndex].Length) {
			wordIndex = 0;
			spawnPosition.x = originalPos.x;
			spawnPosition.y -= leading;
			stringIndex++;

//			foreach (GameObject g in currentText) {
//				Destroy (g);
//			}

			if (stringIndex >= _script.Length) {
				stringIndex = 0;
				spawnPosition.y = originalPos.y;
			}
		}
	}
}
