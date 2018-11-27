using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReportTriggerToParent : MonoBehaviour {

    [SerializeField] bool reportEnter = false;
    [SerializeField] bool reportExit = false;
    [SerializeField] bool reportStay = false;


	void OnTriggerEnter(Collider collider) {
        if (!reportEnter) return;
        transform.parent.SendMessage("OnTriggerEnterChild", collider, SendMessageOptions.DontRequireReceiver);
    }


    void OnTriggerExit(Collider collider) {
        if (!reportExit) return;
        transform.parent.SendMessage("OnTriggerExitChild", collider, SendMessageOptions.DontRequireReceiver);
    }


    void OnTriggerStay(Collider collider) {
        if (!reportStay) return;
        transform.parent.SendMessage("OnTriggerStayChild", collider, SendMessageOptions.DontRequireReceiver);
    }
}
