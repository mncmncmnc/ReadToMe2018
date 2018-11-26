using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using DG.Tweening;

public class Word : MonoBehaviour {

    [SerializeField] float maxLightIntensity = 7f;
    [SerializeField] float maxXPos = 2.07f;
    [SerializeField] float maxYPos = 4.29f;
    [SerializeField] float zPosition = 0f;
    [SerializeField] float fadeTime = 0.75f;
    [SerializeField] bool dontDoAnything;
    [SerializeField] bool applyColorToWord = false;

	Light m_PointLight { get { return GetComponentInChildren<Light>(); } }
    TextMeshPro m_TextMesh { get { return GetComponentInChildren<TextMeshPro>(); } }
    float textMeshAlpha {
        get { return m_TextMesh.color.a; }
        set {
            Color newColor = m_TextMesh.color;
            newColor.a = value;
            m_TextMesh.color = newColor;
        }
    }

    public void Activate(WordDataManager.WordData data) {
        StartCoroutine(Sequence(data));
    }

    IEnumerator Sequence(WordDataManager.WordData data) {

        // Choose random spot on screen
        Vector3 newPosition = new Vector3(Random.Range(-maxXPos, maxXPos), Random.Range(-maxYPos, maxYPos), zPosition);
        transform.position = newPosition;

        // Apply light color
        m_PointLight.color = data.colorValue;

        // Set text
        if (applyColorToWord) { m_TextMesh.color = data.colorValue; }
        m_TextMesh.text = data.word.ToUpper();
        textMeshAlpha = 0f;

        if (dontDoAnything) { yield break; }

        // Tween to max light intensity
        float duration = 0.1f;
        m_PointLight.DOIntensity(MyMath.Map(data.volume, 0f, 1f, 0f, maxLightIntensity), duration);
        DOTween.To(() => textMeshAlpha, x => textMeshAlpha = x, 1, duration);
        yield return new WaitForSeconds(duration);

        // Wait for a moment at maximum intensity
        duration = 0.1f;
        yield return new WaitForSeconds(duration);

        // Tween back down to min
        duration = fadeTime;
        m_PointLight.DOIntensity(0f, duration);
        DOTween.To(() => textMeshAlpha, x => textMeshAlpha = x, 0, duration);
        yield return new WaitForSeconds(duration);

        Destroy(gameObject);

        yield return null;
    }
}
