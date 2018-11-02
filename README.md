# CultureHub Unity Port

## Overview

This repo contains a port of [this project](https://github.com/mncmncmnc/culturehub_residency) from python/Max MSP to NodeJS/Unity. NodeJS sends microphone input to the Google Speech API and serves the results to a local Unity Project. The Unity Project utilizes the [NRC Word-Emotion Association Lexicon](http://www.saifmohammad.com/WebPages/NRC-Emotion-Lexicon.htm) to color code the words spoken.

## Installation

The project requires [NodeJS](https://nodejs.org) with a version greater than 6.5.0 and homebrew to run. You must also create an account with [Google Cloud Account](https://console.cloud.google.com/project). You will need to enable billing and the Google Speech API and download a credential file.

You will also need [homebrew](https://brew.sh)

After that you can run the setup.sh script contained in this repo to install the other dependencies.

You will need to replace the credentials.json file in this repo with your own credentials.

## Using the Project

This project connects Unity to the Google Speech API via a local node server. To run the project you will need to run the node server. You can either do this by running 

```
node server.js
```

or running the run.command file contained in thi repo. Once the server is running, you can open the app in Unity and run it from one of the scenes.

There is a prefab called DataManagement which will handle the server communication. To start your own visualization/experiment, start a new scene and drop the prefab in. 

The prefab lets you check what the microphone input has received, along with a few convenience functions, such as arrays of all confirmed or unconfirmed words.

The DataManagement prefab also contains the Emotion Color Picker, which has a static method for retrieving color data for words. The color data is returned in a ColorScheme object, which contains a background color, font color, and color name.

The DataManagement prefab will not start querying the API until you hit the Space Bar, but it will also listen to customizable OSC events. You can set what event it should listen to in the inspector.

## Scenes In the Project

Main - A Port of the original project

Color Config - a Scene for setting the colors, useful for setting custom colors for different spaces

TextAcrossScreen - a simple scene where words just fly everywhere

Word Tree - More of an artifact building experience, spoken words are connected to each other by shared letters

Feel free to add your own!
