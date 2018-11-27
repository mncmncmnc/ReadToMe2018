using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.PostProcessing;

public class wordReceiver : MonoBehaviour
{

    public GameObject textAnimal;
    public GameObject sprout;
    public GameObject fronds;
    public GameObject tree1;
    public GameObject tree2;
    public GameObject treeTall;
    public GameObject specialDeer;
    public GameObject cloud;

    float micVolume { get { return MyMath.Map(MicVolume.MicLoudness, 0f, 0.055f, 0f, 1); } }

    float deerTimer;
    bool deerSpawned; 

    public PostProcessingProfile myProfile;

    public Camera mainCam;

    public int wordCount;
    float silenceTimer;

    int plantPick;

    void Start()
    {
        deerTimer = 0;
        NodeServerManager.APIReturned += getDummy;
    }

    void Update()
    {
        silenceTimer += Time.deltaTime;
        if (silenceTimer >= 3)
        {
           // spawnSpecialDeer();
        }

        if (Input.anyKeyDown)
        {
           getDummy();
        }
    }

    void colorGrading()
    {
        myProfile.colorGrading.settings.basic.hueShift.Equals(Random.Range(-180, 180));

    }

    void makeTextMesh(WordDataManager.WordData wordData)
    {
       
        Vector3 spawnLocation = new Vector3(Random.Range(-10, 20), Random.Range(-1f, 1f), 0);

        GameObject newAnimal = (GameObject)Instantiate(textAnimal, spawnLocation, Quaternion.identity);

        newAnimal.GetComponent<TextMeshPro>().text = wordData.word;
        newAnimal.GetComponent<TextMeshPro>().color = wordData.colorValue;
        if (wordData.colorValue.a == 0)
        {
            newAnimal.GetComponent<TextMeshPro>().color = new Color(Random.value, Random.value, Random.value, 1);
        }
        newAnimal.transform.localScale = new Vector3(newAnimal.transform.localScale.x * wordData.volume + .5f,
                                                     newAnimal.transform.localScale.y * wordData.volume + .5f,
                                                     newAnimal.transform.localScale.z * wordData.volume + .5f);
    }

    void makePlant(WordDataManager.WordData wordData)
    {

        Vector3 spawnLocationSmall = new Vector3(Random.Range(-30, 26), Random.Range(-4, -3f), 2.3f);
        Vector3 spawnLocationTree = new Vector3(Random.Range(-30, 26), Random.Range(-4, -3.2f), Random.Range(10, 35));
        Vector3 randRotate = new Vector3(0, Random.Range(0, 360), 0);
        float scaleMult = wordData.volume + .5f;

        //set plant type based on word length
        if (wordData.word.Length < 5)
        {
            plantPick = Random.Range(0, 2);
        }

        else if (wordData.word.Length >= 5)
        {
            plantPick = Random.Range(2, 5);
        }
        //spawn plant according to plantpick
        if (plantPick == 0)
        {
            GameObject newPlant = (GameObject)Instantiate(sprout, spawnLocationSmall, Quaternion.Euler(randRotate));
            newPlant.GetComponent<MeshRenderer>().material.color = wordData.colorValue;
            Color emissionColor = new Color(Random.value, Random.value, Random.value); 
            newPlant.GetComponent<MeshRenderer>().material.SetColor("_EmissionColor",emissionColor);
            newPlant.transform.localScale = new Vector3(newPlant.transform.localScale.x * scaleMult,
                                                        newPlant.transform.localScale.y * scaleMult,
                                                        newPlant.transform.localScale.z * scaleMult);

        }
        else if (plantPick == 1)
        {
            GameObject newPlant = (GameObject)Instantiate(fronds, new Vector3(spawnLocationSmall.x, spawnLocationSmall.y - 6,
                                                                               spawnLocationSmall.z), Quaternion.Euler(randRotate));
            newPlant.GetComponentInChildren<MeshRenderer>().material.color = wordData.colorValue;
            Color emissionColor = new Color(Random.value, Random.value, Random.value);
            newPlant.GetComponentInChildren<MeshRenderer>().material.SetColor("_EmissionColor", emissionColor);
            newPlant.transform.localScale = new Vector3(newPlant.transform.localScale.x * scaleMult,
                                                        newPlant.transform.localScale.y * scaleMult,
                                                        newPlant.transform.localScale.z * scaleMult);
        }
        else if (plantPick == 2)
        {
            GameObject newPlant = (GameObject)Instantiate(tree1, spawnLocationTree, Quaternion.Euler(randRotate));
            newPlant.GetComponent<MeshRenderer>().material.color = wordData.colorValue;
            Color emissionColor = new Color(Random.value, Random.value, Random.value);
            newPlant.GetComponent<MeshRenderer>().material.SetColor("_EmissionColor", emissionColor);
            newPlant.transform.localScale = new Vector3(newPlant.transform.localScale.x * scaleMult,
                                                        newPlant.transform.localScale.y * scaleMult,
                                                        newPlant.transform.localScale.z * scaleMult);
        }
        else if (plantPick == 3)
        {
            GameObject newPlant = (GameObject)Instantiate(tree2, spawnLocationTree, Quaternion.Euler(randRotate));
            newPlant.GetComponent<MeshRenderer>().material.color = wordData.colorValue;
            Color emissionColor = new Color(Random.value, Random.value, Random.value);
            newPlant.GetComponent<MeshRenderer>().material.SetColor("_EmissionColor", emissionColor);
            newPlant.transform.localScale = new Vector3(newPlant.transform.localScale.x * scaleMult,
                                                        newPlant.transform.localScale.y * scaleMult,
                                                        newPlant.transform.localScale.z * scaleMult);
        }
        else if (plantPick == 4)
        {
            GameObject newPlant = (GameObject)Instantiate(treeTall, spawnLocationTree, Quaternion.Euler(randRotate));
            newPlant.GetComponent<MeshRenderer>().material.color = wordData.colorValue;
            Color emissionColor = new Color(Random.value, Random.value, Random.value);
            newPlant.GetComponent<MeshRenderer>().material.SetColor("_EmissionColor", emissionColor);
            newPlant.transform.localScale = new Vector3(newPlant.transform.localScale.x * scaleMult,
                                                        newPlant.transform.localScale.y * scaleMult,
                                                        newPlant.transform.localScale.z * scaleMult);

        }

    }
    void makeCloud(WordDataManager.WordData wordData){
        cloudMove.speed = (wordData.volume +.1f) * 10f; 
        float scaleMult = wordData.volume + 1f;
        Vector3 cloudSpawn = new Vector3(-30,Random.Range(3.6f, 5.5f), Random.Range(25,40));
        GameObject newCloud = (GameObject)Instantiate(cloud, cloudSpawn, Quaternion.identity);
        newCloud.transform.localScale = new Vector3(newCloud.transform.localScale.x * scaleMult,
                                                        newCloud.transform.localScale.y * scaleMult,
                                                        newCloud.transform.localScale.z * scaleMult);
    }
 /*

    void spawnSpecialDeer(){


        deerTimer += Time.deltaTime; 

        if (deerTimer >= 5){
            deerSpawned = false; 
        }

        if (!deerSpawned)
        {
            Vector3 spawnLocationSmall = new Vector3(Random.Range(-30, 26), Random.Range(-4, -3f), 2.3f);
            GameObject newDeer = (GameObject)Instantiate(specialDeer, spawnLocationSmall, Quaternion.identity);
            deerTimer = 0; 
            deerSpawned = true; 
        }

    }
    */

    void getDummy()
    {
        silenceTimer = 0;

        WordDataManager.WordData wordData = new WordDataManager.WordData();
        if (wordData.colorType == WordDataManager.WordData.ColorType.None){
          
        }

        //new background color from data 
        //mainCam.backgroundColor = new Color(wordData.colorValue.r + wordData.volume, wordData.colorValue.g + 
                                          //  wordData.volume, wordData.colorValue.b + wordData.volume, wordData.volume * .5f);
        //make new thingy
        makeTextMesh(wordData);
        makePlant(wordData);
        //do color grading 
        colorGrading();
        makeCloud(wordData); 
        wordCount++;



    }
}
