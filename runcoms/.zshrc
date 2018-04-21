#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export TERM="screen-256color"
export VISUAL=nvim
export VEDITOR="$VISUAL"
export PATH=$HOME/bin:$PATH
export LD_LIBRARY_PATH=$HOME/lib/:$LD_LIBRARY_PATH

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
if [[ -s "${ZDOTDIR:-$HOME}/.zaliases" ]]; then
  source "${ZDOTDIR:-$HOME}/.zaliases"
fi

unsetopt correct_all
unsetopt correct
bindkey -e

# (FIX) CURSOR DISAPEARS WHEN MOVING BACK
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[cursor]=underline

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


case `uname` in
  Linux)
    if [ -x "setxkbmap -layout us -option ctrl:nocaps " ]; then
      echo 'remap capslock'
      exit 1
    fi
    # remap capslock to ctrl
      ;;
  Darwin)
  ;;
esac
