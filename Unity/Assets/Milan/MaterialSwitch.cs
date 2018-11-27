using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MaterialSwitch : MonoBehaviour {

	public Material[] mats;
	public float speed;
	float interval;

	// Update is called once per frame
	void Update () {
		if(interval < 0){
			GetComponent<Renderer>().material = mats[Random.Range(0, mats.Length)];
			interval = speed;
		}else{
			interval -= Time.deltaTime;
		}

		// transform.localScale = Vector3.one * (Mathf.Cos(Time.time/10)+ 2.5f) * 5;
	}
}
