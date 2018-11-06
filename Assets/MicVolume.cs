using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MicVolume : MonoBehaviour {

public static float MicLoudness;
    public string microphoneName;
    private AudioClip clipRecord;
    private int _sampleWindow = 128;
    private bool _isInitialized;

    void InitMic()
    {
        if (microphoneName == null) {
            microphoneName = Microphone.devices [0];
        }
		clipRecord = Microphone.Start (microphoneName, true, 999, 44100);
        Debug.Log (clipRecord);
        
    }

    void StopMicrophone()
    {
        Microphone.End (microphoneName);
    }

    float LevelMax()
    {
        float levelMax = 0;
        float[] waveData = new float[_sampleWindow];
        int micPosition = Microphone.GetPosition (null) - (_sampleWindow + 1);
        if (micPosition < 0) {
            return 0;
        }
        clipRecord.GetData (waveData, micPosition);
        for (int i = 0; i < _sampleWindow; ++i) {
            float wavePeak = waveData [i] * waveData [i];
            if (levelMax < wavePeak) {
                levelMax = wavePeak;
            }
        }
        return levelMax;
    }

    void Update()
    {
        MicLoudness = LevelMax ();
		Debug.Log(MicLoudness);
    }

    void OnEnable()
    {
        InitMic ();
        _isInitialized = true;
    }

    void OnDisable()
    {
        StopMicrophone ();
    }

    void OnDestory()
    {
        StopMicrophone ();
    }

    void OnApplicationFocus(bool focus)
    {
        if (focus) {
            if (!_isInitialized) {
                InitMic ();
                _isInitialized = true;
            }
        }

        if (!focus) {
            StopMicrophone ();
            _isInitialized = false;
        }
    }

}

