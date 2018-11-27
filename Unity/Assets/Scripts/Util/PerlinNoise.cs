using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PerlinNoise {

    public Vector2 speed;
    private Vector2 time;
    private Vector2 offset;

    public Vector2 value { get { return new Vector2(Mathf.PerlinNoise(time.x + offset.x, 0f), Mathf.PerlinNoise(0f, time.y + offset.y)); } }
    public Vector2 normalizedValue { get { return new Vector2(
        Mathf.PerlinNoise(time.x + offset.x, 0f) * 2f - 1f, 
        Mathf.PerlinNoise(0f, time.y + offset.y) * 2f - 1f
        ); } }


    public PerlinNoise(float speed)
    {
        Initialize(speed, 0f);
    }


    public PerlinNoise(float speedX, float speedY)
    {
        Initialize(speedX, speedY);
    }


    void Initialize(float speedX, float speedY)
    {
        speed.x = speedX;
        speed.y = speedY;

        offset.x = Random.Range(-1000f, 1000f);
        offset.y = Random.Range(-1000f, 1000f);

        time = Vector2.zero;
    }


    public void Iterate()
    {
        time.x += speed.x;
        time.y += speed.y;
    }


    public Vector2 MapValue(float min, float max)
    {
        return new Vector2(
            MyMath.Map(value.x, 0f, 1f, min, max),
            MyMath.Map(value.y, 0f, 1f, min, max)
            );
    }
}
