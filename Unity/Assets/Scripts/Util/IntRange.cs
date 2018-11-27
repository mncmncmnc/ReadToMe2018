using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public class IntRange {

    public int min;
    public int max;

    public IntRange(int _min, int _max) {
        min = _min;
        max = _max;
    }

    // Seems to be broken :( wasn't important enough to fix yet
    public int Random {
        get {
            return UnityEngine.Random.Range(min, max + 1);
        }
    }
}
