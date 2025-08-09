# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/fd/.zsh/completions:"* ]]; then export FPATH="/home/fd/.zsh/completions:$FPATH"; fi
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh


######################
# User configuration #
######################


# HOMEBREW
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# GO
export PATH=$PATH:/usr/local/go/bin

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# DENO
. "/home/fd/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# STARSHIP PROMPT
eval "$(starship init zsh)"
