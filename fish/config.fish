if status is-interactive
    # Vi mode by default; use `fish_default_key_bindings` to go back to default mode
    # List of vi mode commands: https://fishshell.com/docs/current/interactive.html
    clear
    fish_vi_key_bindings
end

# source /etc/profile with bash
if status is-login
    exec bash -c "test -e /etc/profile && source /etc/profile;\
    exec fish"
end

eval (/opt/homebrew/bin/brew shellenv)
source /opt/homebrew/opt/asdf/libexec/asdf.fish
starship init fish | source
zoxide init fish | source

alias ls="exa"