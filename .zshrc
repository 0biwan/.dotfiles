# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# specify a theme
export ZSH_THEME="agnoster"
DEFAULT_USER="joaoveiga"

# load from the available list of plugins at ~/.oh-my-zsh/plugins
plugins=(git git-flow symfony2 sublime cap brew github mysql osx vagrant)brew github mysql osx vagrant symfony2 sublime

source $ZSH/oh-my-zsh.sh
# source ~/.git-flow-completion.zsh #you have to paste that file to that location then

# Customize to your needs...
export PATH="$(brew --prefix)/bin:$PATH"
export PATH=/usr/local/sbin:"$(brew --prefix josegonzalez/php/php54)/bin:$PATH":./bin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin


#see/hide hidden files
function hiddenOn() { defaults write com.apple.Finder AppleShowAllFiles YES ; killall Finder }
function hiddenOff() { defaults write com.apple.Finder AppleShowAllFiles NO ; killall Finder }

# view man pages in Preview
function pman() { ps=`mktemp -t manpageXXXX`.ps ; man -t $@ > "$ps" ; open "$ps" ; }

#mysql easy start/stop
alias mstart= 'mysql.server start'
alias mstop='mysql.server stop'

#Apache easy start/stop
alias apacheon='sudo apachectl start'
alias apacheoff='sudo apachectl stop'
alias apachere='sudo apachectl restart'

webon(){
  mysql.server start; sudo apachectl start
}
weboff() {
  mysql.server stop; sudo apachectl stop
}

#z
. ~/Dropbox/Dotfiles/z/z.sh

#I have a temp on a different hdd, needed for brew update git, code to do that:
#sudo ditto /private/tmp /Volumes/your_hdd_name/private/tmp
#sudo rm -rf /private/tmp
#sudo ln -s /Volumes/your_hdd_name/private/tmp /private/tmp
export HOMEBREW_TEMP=$HOME/.tmp