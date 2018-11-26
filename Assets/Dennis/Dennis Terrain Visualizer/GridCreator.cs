using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GridCreator {

    public enum Axes { XY, XZ }

    public static Vector3[,] Create2DGrid(int gridWidth, float cellWidth, Axes axes) {
        Vector3[,] grid = new Vector3[gridWidth, gridWidth];

        float startingX = -(gridWidth * cellWidth * 0.5f);
        float startingY = -(gridWidth * cellWidth * 0.5f);
        for (int i = 0; i < gridWidth; i++) {
            for (int j = 0; j < gridWidth; j++) {
                if (axes == Axes.XY) {
                    grid[i, j] = new Vector3(startingX + i * cellWidth, startingY + j * cellWidth, 0f);
                }
                else if (axes == Axes.XZ) {
                    grid[i, j] = new Vector3(startingX + i * cellWidth, 0f, startingY + j * cellWidth);
                }
            }
        }

        return grid;
    }
}
