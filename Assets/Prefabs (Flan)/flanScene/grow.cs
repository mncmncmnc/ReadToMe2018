using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class grow : MonoBehaviour {

	//int speedDivider = 20;

	float plantTimer; 
	int lifeTime;
    float speed = 50f; 
     
	// Use this for initialization
	void Start () {
		plantTimer = 0; 
		lifeTime = Random.Range (5, 10); 

	}

	// Update is called once per frame
	void Update () {

		plantTimer += Time.deltaTime; 



		if (plantTimer < lifeTime) {
			int divider = Random.Range (10, 20);
			gameObject.transform.localScale += new Vector3 (0, 1, 0) * speed * Time.deltaTime/divider;
		} else if (plantTimer >= lifeTime) {
			int divider = Random.Range (20, 40);
			gameObject.transform.localScale += new Vector3 (0, -1, 0) * speed *Time.deltaTime / divider; 
		}

		if (transform.localScale.y <= 0) {
			Destroy (gameObject); 
		}
		
	}
}
