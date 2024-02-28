export PATH="/opt/homebrew/bin:$PATH"

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -l"
alias lla="eza --icons --group-directories-first -la"
alias vim="nvim"

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

eval "$(starship init zsh)"
