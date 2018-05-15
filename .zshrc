# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
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
export PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/2.7/bin"
export PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/3.6/bin"
export PATH="$PATH:/opt/local/bin:/opt/local/sbin"
export PATH="$PATH:/usr/local/smlnj/bin"
export EDITOR='atom -nw'
export PS1="λ "

# Path to your oh-my-zsh installation.
export ZSH=/Users/Gregory/.oh-my-zsh

gca(){ git commit -a; }
ga(){ git commit add; }
gp(){ git pull; }
gs(){ git status --short; }
lsa(){ ls -a; }
lsd(){ ls -d .?*; }
ipconfig(){ ifconfig | grep inet; }
pid-port(){ lsof -n -i4TCP:8080 | grep LISTEN; }
ls-port(){ lsof -i | grep LISTEN; }
start-mongo(){ cd ~/projects/tools/mongodb/; ./bin/mongod --dbpath data/db; }
update-node(){
  sudo n latest;
  sudo npm install -g npm;
  npm upgrade -g yarn;
  node --version;
}
redo-npm(){
  rm -rf node_modules;
  npm install;
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
help-local(){
  echo 'NETWORK:';
  echo ' ipconfig,fiddler,pid-port 8080,ls-port,tcp-dump';
  echo ' dns-lookup,ns-lookup';
  echo 'DIR:';
  echo ' ac,v2,v2t,$GH';
  echo ' line-count,ls-pid,sha1,sha256';
  echo 'MONGO:';
  echo ' start-mongo';
  echo 'NODE:';
  echo ' update-node,redo-npm,redo-npm-cache';
  echo ' fix-npm-token,ls-node-modules,rm-node-modules';
  echo ' v2-npm-i,v2t-npm-i';
  echo 'GIT:';
  echo ' git-draw,git-current,git-flow-current-branch';
  echo 'MOBILE:';
  echo ' run-ios, run-android, ls-android';
}
ls-pid(){
  ps -ax | grep $1
}
sha1(){
  shasum -a 1 $1;
}
sha256(){
  shasum -a 256 $1;
}
dns-lookup(){ host -a $1; }
ns-lookup(){ host -t NS $1; }
line-count(){ wc -l src/**/*.js test/**/*.js; }

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git mongodb
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
