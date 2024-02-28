# Personal macOS and linux configurations

**Attention! For linux not tested yet!**

## Preinstall on macOS

Install homebrew: ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```

Add temporary homebrew to your path after install: ```export PATH="/opt/homebrew/bin:$PATH"```

Install packages of homebrew run: ```brew bundle install```

## Install dotfiles

To add configuration to system run `./stow .` in this repo directory.

Wallpapers `git clone https://github.com/zhichaoh/catppuccin-wallpapers.git`
