using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TextTreeGenerator : MonoBehaviour {

	public string testString = "Behold The Hippopotamaus We Laugh At How He Looks At Us";
	List<Text> segments;
	List<string> branchedWords;
	float charSize;
	float trunkY;
	public float widthAdjustment;
	// Use this for initialization
	void Start () {
		segments = new List<Text>();
		branchedWords = new List<string>();
		string[] words = testString.Split(" ".ToCharArray());
		/*CreateTreeSegment(words[0], new Vector2(Screen.width / 2, -Screen.height / 2), 90);
		for(int i = 1; i < words.Length; i++) {
			AddToTree(words[i]);
		}*/
		trunkY = 0;
		NodeServerManager.APIReturned += CheckForNewTreeSegments;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void CreateTreeSegment(string word, Vector2 position, float rotation) {
		Text newSegment = Instantiate(Resources.Load<GameObject>("prefabs/TreeSegment")).GetComponent<Text>();
		newSegment.transform.SetParent(GameObject.Find("Canvas").transform, false);
		newSegment.text = word;
		newSegment.rectTransform.rotation = Quaternion.Euler(0, 0, rotation);
		newSegment.rectTransform.anchoredPosition = position;
		Debug.Log(newSegment.rectTransform.rect.width);	
		newSegment.gameObject.AddComponent<ContentSizeFitter>();
		newSegment.gameObject.GetComponent<ContentSizeFitter>().horizontalFit = ContentSizeFitter.FitMode.PreferredSize;
		Debug.Log(newSegment.rectTransform.rect.width);	
		segments.Add(newSegment);
	}

	void CheckForNewTreeSegments() {
		string[] confirmedWords = NodeServerManager.GetConfirmedWords();
		for(int i = 0; i < confirmedWords.Length; i++) {
			if(branchedWords.IndexOf(confirmedWords[i]) == -1) {
				branchedWords.Add(confirmedWords[i]);
				AddToTree(confirmedWords[i]);
			}
		}
	}

	void AddToTree(string newWord) {
		
		bool grown = false;
		Debug.Log("adding " + newWord);
		Debug.Log(segments.Count);
		for(int i = segments.Count - 1; i >= 0; i--) {
			char[] word = segments[i].text.ToCharArray();
			for(int j = word.Length - 1; j >= 0; j--) {
				if(SameChar(word[j], newWord[newWord.Length - 1])) {
					Debug.Log(segments[i].text + " connects with " + newWord);
					newWord = ReverseString(newWord);
					BranchFrom(newWord, segments[i], j, Random.Range(25.5f, 33f));
					segments[segments.Count - 1].rectTransform.localScale = new Vector3(1, -1, 1);
					return;
				}
				else if(SameChar(word[j], newWord[0])) {
					Debug.Log(segments[i].text + " connects with " + newWord);
					BranchFrom(newWord, segments[i], j, -Random.Range(25.5f, 33f));
					return;
				}
			}
		}
		CreateTreeSegment(newWord, new Vector2(Screen.width / 2, trunkY), 90);
		trunkY += segments[segments.Count - 1].GetComponent<RectTransform>().rect.width;
	}

	void BranchFrom(string newWord, Text segment, int charIndex, float rotationDelta) {
		RectTransform rectTransform = segment.GetComponent<RectTransform>();
		float angle = rectTransform.eulerAngles.z ;
		Vector2 wordVector = new Vector2(Mathf.Cos(angle* Mathf.Deg2Rad), Mathf.Sin(angle* Mathf.Deg2Rad));
		CreateTreeSegment(newWord, rectTransform.anchoredPosition + (wordVector.normalized * charIndex * (rectTransform.rect.width / segment.text.Length)),
							angle + rotationDelta);
	}

	string ReverseString(string oldString) {
		string newString = "";
		for(int i = oldString.Length - 1; i >= 0; i--) {
			newString += oldString[i];
		}
		Debug.Log("Reversed string to " + newString);
		return newString;
	}

	bool SameChar(char first, char second) {
		return first.ToString().ToLower() == second.ToString().ToLower();
	}
			
}
