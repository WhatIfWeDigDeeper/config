ipconfig(){ ifconfig | grep inet; }
pid-port(){ lsof -n -i4TCP:8080 | grep LISTEN; }
ls-port(){ lsof -i | grep LISTEN; }
mdn(){
  mdnUrl=https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/$1/$2
  open $mdnUrl
}
start-mongo(){ cd ~/projects/tools/mongodb/; ./bin/mongod --dbpath data/db; }
update-node(){
  sudo n latest;
  sudo npm install -g npm;
  npm upgrade -g yarn;
  node --version;
}
redo-npm-cache(){
  npm cache verify
}
fix-npm-token(){ rm -f ./.npmrc; }
ls-node-modules(){
  find . -name node_modules -print
}
rm-node-modules(){
  find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +
}
tcp-dump(){ sudo tcpdump -i any; }
run-ios(){ open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app; }
run-android(){ emulator @PixelXL; }
ls-android(){ emulator -list-avds; }
fiddler(){ mono --arch=32 $HOME/projects/tools/fiddler-mac/Fiddler.exe; }
docker-clean(){
  docker container prune -f;
  docker image prune -f;
}
change-permissions(){
  sudo chmod -R o+rwx $1
}
init-fork() {
  gurl=$(git ls-remote --get-url 2>&1)
  gemail=$(git config user.email 2>&1)
  temp="${gemail/\.com/}"
  guser="${temp//[.@]/-}"
  # replace with your GitHub username
  gUserUrl="${gurl/YOUR-GITHUB-USER-NAME-HERE/$guser}"
  git remote rename origin upstream
  git remote add origin ${gUserUrl}
}
fork-init() {
  # pass GitHub user as argument
  # fork-init gh-name-here

  # get current repo URL
  gurl=$(git ls-remote --get-url 2>&1)

  # replace with your GitHub username
  gUserUrl="${gurl/YOUR-GITHUB-USER-NAME-HERE/$1}"

  git remote rename origin upstream
  git remote set-url --push upstream PUSHING_DISALLOWED
  git remote add origin ${gUserUrl}
}
