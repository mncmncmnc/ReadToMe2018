#!/bin/bash
CRED=`pwd`
CRED+="/credentials.json"
export GOOGLE_APPLICATION_CREDENTIALS=$CRED

deviceList=()
while IFS= read -r line; do
	deviceList+=( "${line% (*}" )
done < <(SwitchAudioSource -a -t input)

echo "Select input device"
select DEVICENAME in "${deviceList[@]}"
do
	echo "Selected $DEVICENAME"
	break
done

echo "Select Sample Rate"
select SAMPLERATE in 16000 22050 44100;
do
	echo "Selected $SAMPLERATE"
	break
done

echo "{\"deviceName\": \"$DEVICENAME\", \"sampleRate\": \"$SAMPLERATE\"}" > config.json
#system_profiler SPAudioDataType -xml | awk '/<key>_name<\/key>/{getline;gsub("<string>","");gsub("</string>","");print}'

#system_profiler SPAudioDataType | awk '/Built-in Microphone:/{getline;getline;getline;getline;getline; gsub("Current SampleRate: ","");print}'
echo "Node server ready to go!"
echo "Make sure you've modified credentials.json with your service account credentials"
