if [ -x "$(which deno)" ]; then
  mkdir -p ~/.oh-my-zsh/custom/plugins/deno
  deno completions zsh > ~/.oh-my-zsh/custom/plugins/deno/_deno
fi
