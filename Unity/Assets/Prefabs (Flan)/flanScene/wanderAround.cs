using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class wanderAround : MonoBehaviour {

    float timer;
    float timeLimit;
    float speed;

    float lifetime;
    float lifeTimer; 

    Vector3 direction; 

	// Use this for initialization
	void Start () {
        timeLimit = 0;
        speed = .01f;
        lifetime = Random.Range(5, 12);
	}
	
	// Update is called once per frame
	void Update () {

        lifeTimer += Time.deltaTime; 


        timer += Time.deltaTime;
        if (timer >= timeLimit){
            pickDirection(); 
        }
        if (lifeTimer >= lifetime){

            Destroy(gameObject);
        }

        gameObject.transform.position += direction *speed;

        if (gameObject.transform.position.x >= 26){
            transform.forward = -transform.forward;  
        }else if (gameObject.transform.position.x <= -17){
            transform.forward = -transform.forward; 
        }
        if (gameObject.transform.position.y >= 4f){
            transform.forward = -transform.forward; 

        }else if (gameObject.transform.position.y <= -4f){
            transform.forward = -transform.forward;
        }
	}

    void pickDirection (){
        
            direction.x = Random.Range(-1, 2);
            direction.y = Random.Range(-1, 2);
            direction.z = 0; 
            timer = 0;
            speed = Random.Range(0f, .08f);
            timeLimit = Random.Range(1, 10);

       
    }
}
