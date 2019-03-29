# Documentation for June 2018 CultureHub Residenency

## Contents

This repo contains code for sending speech-to-text transcriptions into Max/MSP/Jitter patches that then display and interpret that text.

The `speech-to-text` directory contains a Python script called `listen.py` that uses Google's Speech-To-Text API to continuously transcribe live audio from a designated microphone and send the results out over OSC. By default, the script uses the built-in microphone, but can be passed an optional `-d` argument to specify an alternate device name, e.g.

```
python speech-to-text/listen.py - d "Scarlett 6i6 USB"
```

There are two Max patches, `flash.maxpat` and `abstract.maxpat`, that demonstrate different ways of using the speech-to-text transcription in a live performance context. Both of these Max patches will start the Python script automatically as soon as they open, using the `shell` Max external to run an Applescript script called `listen.scpt` that takes care of activating a virtualenv and starting the Python script.

`flash.maxpat` displays the transcribed text on CultureHub's 3840x720 three-projector screen, while `abstract.maxpat` uses the amount of text read so far to control the behavior of some 3D objects.

## Setup Instructions for OS X

Run the following commands from the root directory of this repo.

1. Install Homebrew.

```/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```

2. Install pyenv, pyenv-virtualenv, and portaudio.

```brew install pyenv pyenv-virtualenv portaudio zlib```

3. Run the following commands to add init code for `pyenv` and `pyenv-virtualenv` to your ~/.bash_profile.

```
touch ~/.bash_profile

echo 'eval "$(pyenv virtualenv-init -)"' | cat - ~/.bash_profile > temp && mv temp ~/.bash_profile

echo 'eval "$(pyenv init -)"' | cat - ~/.bash_profile > temp && mv temp ~/.bash_profile

echo 'export PATH="/usr/local/bin:$PATH"' | cat - ~/.bash_profile > temp && mv temp ~/.bash_profile

echo 'export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"' | cat - ~/.bash_profile > temp && mv temp ~/.bash_profile

echo 'export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"' | cat - ~/.bash_profile > temp && mv temp ~/.bash_profile

echo 'PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"' | cat - ~/.bash_profile > temp && mv temp ~/.bash_profile

source ~/.bash_profile
```

4. Set your global Python version to 3.6.5.

```
pyenv install 3.6.5
pyenv global 3.6.5
```

5. Create a virtualenv called `speech-to-text`. The name matters, because currently it's hardcoded into the Max/MSP patch.

```pyenv virtualenv speech-to-text```

6. Activate the virtualenv and install the Python dependencies.

```
pyenv activate speech-to-text
cd speech-to-text
pip install -r requirements.txt
```

7. Create a [new Google project](https://console.developers.google.com/projectcreate) and a [service account](https://console.developers.google.com/projectselector/iam-admin/serviceaccounts) with Owner permissions for that project, if you do not already have those. Download the service account credentials as a JSON file and place the file in a directory that makes sense to you, e.g. your home directory.

8. Add a `GOOGLE_APPLICATION_CREDENTIALS` environment variable to your ~/.bash_profile that points to the location of the JSON file containing your Google service account credentials.

```
echo 'export GOOGLE_APPLICATION_CREDENTIALS=/path/to/my-credentials-805re3qcnbcd.json' >> ~/.bash_profile

source ~/.bash_profile
```

You should now be able to run the speech transcription Python script.
