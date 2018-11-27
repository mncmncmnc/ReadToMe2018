using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class scaleSphere : MonoBehaviour {

	public float speed;
	public string word;
	public Transform wordAssigned;
	// Use this for initialization
	void Start () {

	}

	// Update is called once per frame
	void Update () {
		bool inWords = false;
		foreach (string w in NodeServerManager.GetConfirmedWords()){
				if (word == w){
					inWords = true;
				}
		}
		if(!inWords){
			transform.localScale += Vector3.one * Time.deltaTime * speed;
			transform.position += Vector3.right * Time.deltaTime * speed;
		}else{
			transform.localScale -= Vector3.one * Time.deltaTime * speed;
			transform.position += Vector3.right * Time.deltaTime;
			if(transform.localScale.x < 0){
                gameObject.SetActive(false);
                wordAssigned.gameObject.SetActive(false);

			}
			// transform.position += Vector3.forward * Time.deltaTime;
		}


	}
}
