using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TextUtil {

    public static string AddZerosToBeginningOfNumber(int number, int maxDigits) {
        string numberString = number.ToString();
        if (numberString.Length >= maxDigits) { return numberString; }
        int originalLength = numberString.Length;
        for (int i = 0; i < maxDigits - originalLength; i++) { numberString = numberString.Insert(0, 0.ToString()); }
        return numberString;
    }
}
