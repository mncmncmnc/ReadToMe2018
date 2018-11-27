using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CollisionReporter : MonoBehaviour {
    public MonoBehaviour reportToScript;

    private void OnCollisionEnter(Collision collision) {
        reportToScript.SendMessage("ReportedCollision", collision);
    }
}
