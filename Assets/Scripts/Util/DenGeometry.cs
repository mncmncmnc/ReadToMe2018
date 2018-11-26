using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DenGeometry {

    public static Vector3[] Circle(float xRadius, float yRadius, int segments) {
        float x;
        float y;
        float z = 0f;

        float angle = 20f;

        Vector3[] positions = new Vector3[segments + 1];

        for (int i = 0; i < positions.Length; i++) {
            x = (Mathf.Sin(Mathf.Deg2Rad * angle) * xRadius);
            y = 0f;
            z = (Mathf.Cos(Mathf.Deg2Rad * angle) * yRadius);

            positions[i] = new Vector3(x, y, z);

            angle += (360f / segments);
        }

        return positions;
    }

    public static Vector3[] Circle(float radius, int segments) {
        return Circle(radius, radius, segments);
    }

    public static Vector3[] NerveDamageCrosshair(float radius, int segments, float pinch, bool pinchOddVectors) {
        float x;
        float y;
        float z = 0f;

        float angle = 0f;

        Vector3[] returnArray = new Vector3[segments + 1];

        for (int i = 0; i < returnArray.Length; i++) {
            float xDeath = 0;
            if ((i + MyMath.BoolToInt(pinchOddVectors)) % 2 == 0) { xDeath = MyMath.Map(pinch, 0f, 1f, 0f , radius); }
            x = Mathf.Sin(Mathf.Deg2Rad * angle) * (radius - xDeath * Random.Range(0.9f, 1.1f));
            y = 0f;
            z = Mathf.Cos(Mathf.Deg2Rad * angle) * (radius - xDeath * Random.Range(0.9f, 1.1f));

            returnArray[i] = new Vector3(x, y, z);

            angle += (360f / segments);
        }

        return returnArray;
    }
}

