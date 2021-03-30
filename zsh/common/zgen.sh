# if the init script doesn't exist
if ! zgen saved; then
  # specify plugins here
  zgen load denysdovhan/spaceship-prompt spaceship
  zgen load agkozak/zsh-z

  # generate the init script from plugins above
  zgen save
fi
