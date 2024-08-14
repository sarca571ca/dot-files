ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/base.json)"

# Aliases
alias ll="ls -al"
alias d-horizon="cd ~/Games/horizon-xi/drive_c/Program\ Files/HorizonXI"
alias n-horizon="cd ~/Games/horizon-xi/drive_c/Program\ Files/HorizonXI && nvim"

alias d-ffxi="cd ~/Games/final-fantasy-xi/drive_c/Ashita-v4beta"
alias n-ffxi="cd ~/Games/final-fantasy-xi/drive_c/Ashita-v4beta && nvim"

alias d-asb="cd ~/git-repos/AirSkyBoat"
alias n-asb="cd ~/git-repos/AirSkyBoat && nvim"
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
