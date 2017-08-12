export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=/usr/local/git/bin:$PATH
export PATH=$PATH:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.npm-packages/bin/"
export PATH="$PATH:${ANDROID_HOME}/emulator"
export PATH="$PATH:${ANDROID_HOME}/tools"
export PATH="$PATH:${ANDROID_HOME}/platform-tools"
export PATH="$PATH:~/Library/Python/3.6/bin"
export PATH="$PATH:~/Library/Python/2.7/bin"
export PATH="$PATH:~/Library/scala-2.12.2/bin"
export EDITOR='subl -w'emulator
export PS1="λ "

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# bash-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi
git-current(){ git rev-parse --abbrev-ref HEAD; }
git-flow-current-branch(){ git rev-parse --abbrev-ref HEAD | cut -d'/' -f 2; }
ipconfig(){ ifconfig | grep inet; }
pid-port(){ lsof -n -i4TCP:8080 | grep LISTEN; }
ls-port(){ lsof -i | grep LISTEN; }
dir(){ ls; }
start-mongo(){ cd ~/projects/tools/mongodb/; ./bin/mongod --dbpath data/db; }
update-node(){
  sudo n latest;
  sudo npm install -g npm;
  node --version;
}
redo-npm(){
  rm -rf node_modules;
  yarn install;
}
run-ios(){ open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app; }
run-android(){ emulator @PixelXL; }
ls-android(){ emulator -list-avds; }
help-local(){
  echo 'NETWORK: ipconfig, pid-port, ls-port';
  echo 'MONGO: start-mongo';
  echo 'NODE: update-node, redo-npm';
  echo 'GIT: git-current, git-flow-current-branch';
  echo 'FILES: dir';
  echo 'MOBILE: run-ios, run-android, ls-android';
}

alias git='LANG=en_US git'
