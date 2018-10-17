CRED=`pwd`
CRED+="/credentials.json"
export GOOGLE_APPLICATION_CREDENTIALS=$CRED
brew install sox
npm install
git update-index --skip-worktree credentials.json 
echo "Node server ready to go!"
echo "Make sure you've modified credentials.json with your service account credentials"
