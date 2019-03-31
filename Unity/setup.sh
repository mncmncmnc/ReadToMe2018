CRED=`pwd`
CRED+="/credentials.json"
export GOOGLE_APPLICATION_CREDENTIALS=$CRED
brew install sox
brew install switchaudio-osx
npm install
git update-index --skip-worktree ./credentials.json 
deviceList=() 
while IFS= read -r line; do 
  deviceList+=( "${line%(*}" ) 
done < <(SwitchAudioSource -a -t input) 
  
echo "Select input device" 
select DEVICENAME in "${deviceList[@]}" 
do 
echo "Selected $DEVICENAME" 
DEVICENAME="${DEVICENAME%"${DEVICENAME##*[![:space:]]}"}"
(SwitchAudioSource -t input -s "$DEVICENAME")
break 
done 
  
echo "Select Sample Rate" 
select SAMPLERATE in 16000 22050 44100; 
do 
echo "Selected $SAMPLERATE" 
break 
done 

echo "{\"deviceName\": \"$DEVICENAME\", \"sampleRate\": \"$SAMPLERATE\"}" > config.json
echo "Node server ready to go!"
echo "Make sure you've modified credentials.json with your service account credentials"
