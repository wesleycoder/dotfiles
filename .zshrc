export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
export ZSH_THEME="spaceship"

source "${HOME}/.zgen/zgen.zsh"

loadZshFiles () {
  local ZSH_PLATFORM=''

  for filename in ~/.zsh/common/*.sh; do
    source $filename
  done

  if [ `uname` = Linux ]; then
    ZSH_PLATFORM=linux
  elif [ `uname` = Darwin ]; then
    ZSH_PLATFORM=macos
  else
    ZSH_PLATFORM=windows
  fi
  
  for filename in ~/.zsh/$ZSH_PLATFORM/*.sh; do
    source $filename
  done
}

loadZshFiles

if [ -f ~/.zshrc_local ]; then
  source ~/.zshrc_local
fi
