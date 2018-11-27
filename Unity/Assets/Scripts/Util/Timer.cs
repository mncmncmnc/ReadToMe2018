using UnityEngine;
using System.Collections;

public class Timer {

	public float seconds;
	public bool finished;

	public Timer(float _seconds) {
		seconds = _seconds;
		finished = false;
	}

	public void Run() {
		seconds -= Time.deltaTime;

		if (seconds <= 0) {
			finished = true;
		}
	}
}
