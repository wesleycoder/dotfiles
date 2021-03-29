export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
export ZSH_THEME="spaceship"

source "${HOME}/.zgen/zgen.zsh"

loadZshFiles () {
  local ZSH_FILES_FOLDER=''

  if [ `uname` = Linux ]; then
    ZSH_FILES_FOLDER=linux
  elif [ `uname` = Linux ]; then
    ZSH_FILES_FOLDER=macos
  else
    ZSH_FILES_FOLDER=windows
  fi
  
  for filename in ~/.zsh/$ZSH_FILES_FOLDER/*.zshrc; do
    source $filename
  done
}

loadZshFiles

source ./zgen.sh

if [ -f ~/.zshrc_local ]; then
  source ~/.zshrc_local
fi
