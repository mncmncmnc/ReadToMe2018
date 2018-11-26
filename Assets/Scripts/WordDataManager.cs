using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WordDataManager : MonoBehaviour {

    static string[] dummyWords = { "VOLCANO", "FIREFLY", "AND", "THE", "YOU", "me", "give", "recieve", "undo", "never", "regardless", "return" };

    public class WordData {
        public string word;
        public float volume;
        public enum ColorType { None, yellow, red, green, white, blue, purple, orange, black, grey, brown, pink, error }
        public ColorType colorType;
        public Color colorValue {
            get {
                switch (colorType) {
                    case ColorType.None:
                        return new Color(0f, 0f, 0f, 0f);
                    case ColorType.yellow:
                        return Color.yellow;
                    case ColorType.red:
                        return Color.red;
                    case ColorType.green:
                        return Color.green;
                    case ColorType.white:
                        return Color.white;
                    case ColorType.blue:
                        return Color.blue;
                    case ColorType.purple:
                        return new Color(1f, 0f, 1f);
                    case ColorType.orange:
                        return new Color(1f, 0.5f, 0f);
                    case ColorType.black:
                        return Color.black;
                    case ColorType.grey:
                        return Color.grey;
                    case ColorType.brown:
                        return new Color(0.4f, 0.3f, 0);
                    case ColorType.pink:
                        return Color.magenta;
                    default:
                        return new Color(0f, 0f, 0f, 0f);
                }
            }
        }

        public WordData(string word, float volume, WordData.ColorType color) {
            this.word = word;
            this.volume = volume;
            this.colorType = color;
        }

        public WordData(string word, float volume) {
            this.word = word;
            this.volume = volume;
            this.colorType = (ColorType)Random.Range(0, 11);
        }

        public WordData() {
            this.word = NodeServerManager.GetLastUnconfirmedWord();
            this.volume = MicVolume.MicLoudness;
            ColorScheme scheme = EmotionColorPicker.GetColorSchemeForWord(NodeServerManager.GetLastUnconfirmedWord());
            Debug.Log(scheme.colorName);
            this.colorType = (WordDataManager.WordData.ColorType)System.Enum.Parse(typeof(WordDataManager.WordData.ColorType), scheme.colorName);
        }
    }

    public static WordData GetDummyData() {
        string dummyWord = dummyWords[UnityEngine.Random.Range(0, dummyWords.Length)];
        return new WordData(dummyWord, UnityEngine.Random.value);
    }
}
