if status is-interactive
    # Commands to run in interactive sessions can go here
end
jump shell fish | source

alias 'vim = nvim'
alias 'ls = colorls'
function fish_greeting
    echo "Arigato Fallen 󰱯 "
end
set -x PATH /Users/hkhrithik/.local/bin $PATH

set -g FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"
