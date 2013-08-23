SHELL=/usr/local/bin/bash

# DEFINE COLORS
#######################################################

if [ -f ~/.bash/colors.bash ]; then
  source ~/.bash/colors.bash
fi

# COMMAND PROMPT
#######################################################

# PS1="${BRIGHT_CYAN}[${CYAN}\u${NORMAL}@${CYAN}\h${NORMAL}:${RED}\w${BRIGHT_CYAN}]${NORMAL}\n> ${RESET}"

if [ -f ~/.bash/completion/git-completion.bash ]; then
  source ~/.bash/completion/git-completion.bash
  PS1="\n${BRIGHT_CYAN}[${CYAN}\u${NORMAL}@${CYAN}\h${NORMAL}:${RED}\w${BRIGHT_CYAN}]${GREEN}"' $(__git_ps1 "(%s)")'"\n${NORMAL}> ${RESET}"
  # PS1="${NORMAL}[${CYAN}\u${WHITE} in ${RED}\w${NORMAL}] ${GREEN}"' $(__git_ps1 "(%s)")'"\n${NORMAL}> ${RESET}"
fi

# TODO.SH
#######################################################
export TODOTXT_DEFAULT_ACTION=pv
alias td='todo.sh -d ~/Dropbox/.todo.cfg'
alias ideas='todo.sh -d ~/Dropbox/.badideas.cfg'
alias t='~/Documents/ya-todo-py/todo.py --todo-dir ~/Dropbox/topic-dev/todo/'

if [ -f ~/.bash/completion/todo.bash ]; then
  source ~/.bash/completion/todo.bash
fi

# COMPLETION
#######################################################

if [ -f ~/.bash/completion/git-flow-completion.bash ]; then
  source ~/.bash/completion/git-flow-completion.bash
fi

if [ -f ~/.bash/completion/rails.bash ]; then
  source ~/.bash/completion/rails.bash
fi

# CONFIG
#######################################################

export TERM=xterm-256color

# make tab completion case insensitive 
bind "set completion-ignore-case on"

export VERSIONER_PYTHON_PREFER_32_BIT=yes

export EDITOR='vim'

export HISTFILESIZE=10000 # the bash history should save 3000 commands
export HISTCONTROL=ignoredups #don't put duplicate lines in the history.

export GIT_MERGE_AUTOEDIT=no #don't open merge conflict messages

# PATHS
#######################################################

export RBENV_PATH=./vendor/ruby/bin:$HOME/.rbenv/bin:$HOME/.rbenv/shims
export NPM_PATH=/usr/local/share/npm/bin
export PYTHON_PATH=/usr/local/share/python
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export NODE_PATH=/usr/local/lib/node_modules
export SYS_PATH=/usr/local/bin:/usr/local/sbin
export PATH=$RBENV_PATH:$SYS_PATH:$NPM_PATH:$PYTHON_PATH:$PATH

# ALIASES
#######################################################

if [ -f ~/.bash/aliases.bash ]; then
   source ~/.bash/aliases.bash
fi
