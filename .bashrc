export PATH="/opt/homebrew/bin:$PATH"


LC_CTYPE="en_US.UTF-8"
LC_ALL="en_US.UTF-8"


alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -l"
alias lla="eza --icons --group-directories-first -la"
alias vim="nvim"
alias bat="bat --theme=Catppuccin-mocha --style=plain"
alias cat="bat"

eval "$(starship init bash)"
