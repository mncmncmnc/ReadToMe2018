using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class meshManipulate : MonoBehaviour {

    Mesh skullMesh; 

	// Use this for initialization
	void Start () {
        skullMesh = gameObject.GetComponent<MeshFilter>().mesh;
	}
	
	// Update is called once per frame
	void Update () {

         Vector3[] vector3s = skullMesh.vertices; 

        for (int i = 0; i < skullMesh.vertexCount; i++)
        {
            Vector3 newPos = vector3s[i];
            newPos += Random.insideUnitSphere *.005f;
            vector3s[i] = newPos; 

        }
        skullMesh.vertices = vector3s; 
        skullMesh.RecalculateBounds(); 

	}
}
