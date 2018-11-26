using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class spheres : MonoBehaviour {

	public GameObject sphere;
	public LineRenderer lineDraw;
	public Writer  textWriter;
	// Use this for initialization
	void Start () {
		NodeServerManager.APIReturned += DoThing;
	}

	// Update is called once per frame
	void Update () {

		float perlin = Mathf.PerlinNoise((float)TextIO.count/3f,(float)TextIO.count/3f);

		// sphere.localScale = Vector3.Lerp(sphere.localScale, Vector3.zero, Time.deltaTime * 2);


	}

	 void DoThing(){
		 // lineDraw.positionCount = TextIO.count;
		 GameObject newSphere = (GameObject)Instantiate(sphere, Vector3.forward * 10 + Vector3.right * -40, Quaternion.identity);
		 float volume = 2f;

		 //use colorName to make switch happen

		 scaleSphere s = newSphere.GetComponent<scaleSphere>();
		 s.speed = volume;
		 //newSphere.transform.localScale = Vector3.one;

		 float r = Random.Range(0.0f, 1.0f);
		 float g = Random.Range(0.0f, 1.0f);
		 float b = Random.Range(0.0f, 1.0f);
		 newSphere.GetComponent<MeshRenderer>().material.color = Random.ColorHSV(0f, 1f, (float)TextIO.wordCount/10f, (float)TextIO.wordCount/10f, (float)TextIO.wordCount/10f, (float)TextIO.wordCount/10f);
		 // newSphere.GetComponent<MeshRenderer>().material.color = EmotionColorPicker.GetColorSchemeForWord(TextIO.lastWord).background;

		 Vector3 wordPos = Camera.main.transform.position + (Vector3.forward * (10 + TextIO.count));
		Transform newWord;
				 // if(TextIO.newUnconfirmedWord){
			  	newWord = textWriter.CreateWord(wordPos, NodeServerManager.GetLastUnconfirmedWord()).transform;
					s.word = NodeServerManager.GetLastUnconfirmedWord();
			 // }else{
				//  newWord = textWriter.CreateWord(wordPos, TextIO.lastWord).transform;
				//  s.word = TextIO.lastWord;
			 // }

			 newWord.GetComponent<TextMesh>().fontSize = 120;
			 s.wordAssigned = newWord;
			followTarget f = newWord.gameObject.AddComponent<followTarget>();
			f.target = newSphere.transform;
	 }
}
