#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

export PATH="~/.config/emacs/bin:$PATH"  
export DOTNET_CLI_TELEMETRY_OPTOUT=1
alias ls='eza --color=auto'
alias grep='grep --color=auto'
alias stardew="./.local/share/Steam/steamapps/common/Stardew\ Valley/StardewModdingAPI"
export TERM="wezterm"
. "$HOME/.cargo/env"
source /usr/share/nvm/init-nvm.sh

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi

#source ~/export-esp.sh

# pnpm
export PNPM_HOME="/home/devin/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
