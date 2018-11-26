using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LineDrawer : MonoBehaviour {

	public Transform sphere;
	public LineRenderer lineDraw;
	public Writer  textWriter;
	// public GameObject sphere;
	// Use this for initialization
	void Start () {
        NodeServerManager.APIReturned += DoThing;
	}

	// Update is called once per frame
	void Update () {
		float perlin = Mathf.PerlinNoise((float)TextIO.count/3f,(float)TextIO.count/3f);
		 sphere.localScale = Vector3.Lerp(sphere.localScale, Mathf.Pow(Mathf.Clamp01(Mathf.Sin((float)TextIO.count/3f) + 1.1f), 1f) * 45f * Vector3.one, Time.deltaTime * 3);
		//sphere.localScale = Vector3.Lerp(sphere.localScale, TextIO.wordCount * 5f * Vector3.one, Time.deltaTime * 3);
		// sphere.localScale = Vector3.Lerp(sphere.localScale, Vector3.one * 25f, Time.deltaTime * 2);

		Camera.main.transform.position = Vector3.Lerp(Camera.main.transform.position, Vector3.forward * (3f * Time.time + 1f), Time.deltaTime * 2);
		if (TextIO.newUnconfirmedWord || TextIO.newWord){
			//DoThing();
			// sphere.localScale = MicVolume.MicLoudness * Vector3.one * 100;
		}
	}

	 void DoThing(){
		 lineDraw.positionCount = TextIO.count;
		 Vector3 wordPos = Camera.main.transform.position + (Vector3.forward * 25) + (new Vector3(Mathf.Sin((float)TextIO.count/1.2f), Mathf.Cos((float)TextIO.count/1.2f), 0)) * ((Mathf.Sin(Time.time) + 1.5f)* 2f);
		
		textWriter.CreateWord(wordPos, NodeServerManager.GetLastUnconfirmedWord());

		
		// sphere.localScale = Vector3.zero;
		 lineDraw.SetPosition(TextIO.count-1, wordPos);
	 }
}
