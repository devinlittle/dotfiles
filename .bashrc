#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
export GPG_TTY=$(tty)

gpg-connect-agent updatestartuptty /bye >/dev/null 2>&1

### Aliases
alias ls='eza --color=auto'
alias grep='grep --color=auto'
alias ip="ip --color=always"
alias z="zellij"
alias remote-dev='ssh -t mac-mini -- "~/.cargo/bin/zellij attach -c devina"'
alias remote-kill='ssh -O exit mac-mini'

if [ ! -d "$HOME/.ssh/sockets" ]; then
  mkdir -p "$HOME/.ssh/sockets"
  chmod 700 "$HOME/.ssh"
  chmod 700 "$HOME/.ssh/sockets"
fi

### Exports
export PAGER="moor"
export EDITOR="nvim"

### Desktop
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  export MOZ_ENABLE_WAYLAND=1
  export ELECTRON_OZONE_PLATFORM_HINT="auto"
fi

### Coding Stuff
source "$HOME/.cargo/env"
eval "$(fnm env)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/devin/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
