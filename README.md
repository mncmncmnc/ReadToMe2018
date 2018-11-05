# CultureHub Unity Port

## Overview

This repo contains a port of [this project](https://github.com/mncmncmnc/culturehub_residency) from python/Max MSP to NodeJS/Unity. NodeJS sends microphone input to the Google Speech API and serves the results to a local Unity Project. The Unity Project utilizes the [NRC Word-Emotion Association Lexicon](http://www.saifmohammad.com/WebPages/NRC-Emotion-Lexicon.htm) to color code the words spoken.

## Installation

The project requires [NodeJS](https://nodejs.org) with a version greater than 6.5.0 and homebrew to run. You must also create an account with [Google Cloud Account](https://console.cloud.google.com/project). You will need to enable billing and the Google Speech API and download a credential file.

You will need to replace the credentials.json file in this repo with the credentials you download from google.

### OSX installation

You will need [homebrew](https://brew.sh)

After that, navigate to the directory and run the setup.sh script contained in this repo to install the other dependencies.
```
. setup.sh
```

### Windows installation

You will need to install sox manually via [binary files] (http://sourceforge.net/projects/sox/files/latest/download)

Once installed, you must [add sox to your path](https://stackoverflow.com/questions/17667491/how-to-use-sox-in-windows#17668191)

Lastly you will need to set an enviornment variable for your credentials. In Power Shell you can enter the following

```
$env:GOOGLE_APPLICATION_CREDENTIALS="C:\Path\To\The\Repo\credentials.json"
```
Replacing the path with the path to your project. More info on this can be found [here](https://cloud.google.com/docs/authentication/getting-started)

# Using the Project

## Setup

This project connects Unity to the Google Speech API via a local node server. To run the project you will need to run the node server. You can either do this by running 

```
node server.js
```

in terminal (OSX) or Power Shell (Windows) or running the run.command file contained in this repo. Once the server is running, you can open the app in Unity and run it from one of the scenes.

The first time you run the project it is recommended you run the ColorConfig scene once to set up the color schemes in your player prefrences.

## Development

### Getting Transcribed Speech

There is a prefab called DataManagement which contains a script called NodeServerManager that handles the server communication for you. To start your own visualization/experiment, start a new scene and drop the prefab in. 

The prefab is set up to trigger an event when it receives transcriptions from the Google API

```
NodeServerManager.APIReturned += YourWordProcessingFunction;
```

will call YourWordProcessingFunction() whenever new transcriptions come from google

The script also comes with a few static convenience functions, such as arrays of all confirmed or unconfirmed words.

```
NodeServerManager.confirmedFullText
```

will return the complete confirmed string up to this point.

```
NodeServerManager.currentPossibleText
```

will return the current guess.

###  DataManagementPrefab

The DataManagement prefab also contains the Emotion Color Picker, which has a static method for retrieving color data for words. The color data is returned in a ColorScheme object, which contains a background color, font color, and color name.

The DataManagement prefab will not start querying the API until you hit the Space Bar, but it will also listen to customizable OSC events. You can set what event it should listen to in the inspector.

### ColorScheme Struct

The color data for the project is transferred around using a ColorScheme struct. The struct contains the name of the color, a background color, and a font color. 

```
public struct ColorScheme {
		public string colorName;
		public Color background
		public Color font;
	}
```

When you retrieve a color from EmotionColorPicker, it will be wrapped in this struct. You can set the colors in the ColorConfig tool.

## Scenes In the Project

Main - A Port of the original project

Color Config - a Scene for setting the colors, useful for setting custom colors for different spaces

TextAcrossScreen - a simple scene where words just fly everywhere

Word Tree - More of an artifact building experience, spoken words are connected to each other by shared letters

Feel free to add your own!
