if status is-interactive
    # Commands to run in interactive sessions can go here
end

pyenv init - | source

starship init fish | source
# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
