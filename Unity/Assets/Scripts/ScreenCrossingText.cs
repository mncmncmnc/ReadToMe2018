using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScreenCrossingText : MonoBehaviour {

	float angle;
	Vector2 travelVector;
	float speed;
	RectTransform rectTransform;
	float lifeTime;
	Text myText;

	// Use this for initialization
	void Awake () {
		rectTransform = GetComponent<RectTransform>();
		travelVector = Vector2.zero;
		lifeTime = 1000;
		myText = GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {
		rectTransform.anchoredPosition += (travelVector * speed);
		lifeTime -= Time.deltaTime;
		if(lifeTime <= 0) Destroy(gameObject);
	}

	public void SetText(string text) {
		myText.text = text;
	}

	public void InitializeTravel(float targetAngle, float newSpeed) {
		SetSpeedAndLifetime(newSpeed);
		rectTransform.Rotate(new Vector3(0, 0, targetAngle));
		float radians = Mathf.Deg2Rad * targetAngle;
		travelVector = new Vector2(Mathf.Cos(radians) * -1, Mathf.Sin(radians) * -1);
	}

	public void InitializeTravelWithVector(float rotationAngle, float newSpeed, Vector2 travelAngle) {
		SetSpeedAndLifetime(newSpeed);
		rectTransform.Rotate(new Vector3(0, 0, rotationAngle));
		travelVector = travelAngle;
	}

	void SetSpeedAndLifetime(float newSpeed) {
		speed = newSpeed;
		lifeTime = (Screen.width * 3)/ newSpeed;
		lifeTime *= Time.deltaTime ;
	}
}
