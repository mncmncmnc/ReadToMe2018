using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectPooler : MonoBehaviour {

    [SerializeField] GameObject objectPrefab;
    [SerializeField] int startingNumber = 1000;
    GameObject[] objects;
    int index;


    protected virtual void Awake() {
        // Instantiate all objects.
        objects = new GameObject[startingNumber];
        for (int i = 0; i < objects.Length; i++) {
            objects[i] = InstantiateNew();
            DeactivateObject(objects[i]);
        }
    }


    protected virtual GameObject InstantiateNew() {
        GameObject newObject = Instantiate(objectPrefab);
        newObject.transform.parent = transform;
        newObject.AddComponent<PooledObject>();
        newObject.GetComponent<PooledObject>().m_ObjectPooler = this;
        return newObject;
    }


    protected virtual void ActivateObject(GameObject activatedObject) {
        activatedObject.SetActive(true);
    }


    protected virtual void DeactivateObject(GameObject deactivatedObject) {
        deactivatedObject.SetActive(false);
    }


    public virtual GameObject GrabObject() {
        GameObject grabbedObject = objects[index];
        index++;
        if (index >= startingNumber) { index = 0; }


        // If there are inactive objects in the list, return the top one. Otherwise, instantiate a new one and return that.
        //if (inactiveObjects.Count > 0) {
        //grabbedObject = inactiveObjects[0];
        //} 

        //else {
        //    Debug.Log("Instantiating new " + objectPrefab.name);
        //    grabbedObject = InstantiateNew();
        //    inactiveObjects.Add(grabbedObject);
        //}

        ActivateObject(grabbedObject);

        return grabbedObject;
    }


    public virtual void ReturnObject(GameObject returnedObject) {
        returnedObject.transform.parent = transform;
        DeactivateObject(returnedObject);
    }
}
