source "${HOME}/.zgen/zgen.zsh"

for file in ~/.zsh/*.zshrc; do
    source "$file"
done

# if the init script doesn't exist
if ! zgen saved; then
  # specify plugins here
  zgen load denysdovhan/spaceship-prompt spaceship
  zgen load agkozak/zsh-z

  # generate the init script from plugins above
  zgen save
fi

if [ -f ~/.zshrc_local ]; then
  source ~/.zshrc_local
fi
