if status is-interactive
    # Commands to run in interactive sessions can go here
end
jump shell fish | source

alias 'vim = nvim'
alias 'ls = colorls'
alias 'cb = cd ..'
function fish_greeting
    echo "Arigato Fallen 󰱯 "
end

fzf --fish | source
set -g FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"
scheme set dracula

# ~/.config/starship.tomlecho
starship init fish | source

set -g STARSHIP_CONFIG ~/.config/starship.toml
set -g command_timeout 60

