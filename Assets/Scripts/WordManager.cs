using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WordManager : MonoBehaviour {

    [SerializeField] GameObject wordPrefab;
    WordDataManager dataManager { get { return GetComponent<WordDataManager>(); } }

    private void Start()
    {
        NodeServerManager.APIReturned += SpawnNewWord;
    }
    private void Update() {
        if (Input.anyKeyDown) {
            SpawnNewWord();
        }
    }

    void SpawnNewWord() {
        Word newWord = Instantiate(wordPrefab).GetComponent<Word>();
        newWord.Activate(new WordDataManager.WordData());
    }
}
