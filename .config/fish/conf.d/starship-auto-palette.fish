function _auto_theme --on-event fish_prompt
    set -l mode light
    defaults read -g AppleInterfaceStyle &>/dev/null && set mode dark

    test "$mode" = "$_system_theme" && return
    set -g _system_theme $mode

    if test "$mode" = dark
        command sed -i '' "s/^palette = .*/palette = 'catppuccin_mocha'/" ~/.config/starship.toml
        command sed -i '' 's|catppuccin-latte-transparent|catppuccin-mocha-transparent|' ~/.config/k9s/config.yaml
        command sed -i '' 's|"theme": "light-ansi"|"theme": "dark-ansi"|' ~/.claude.json
    else
        command sed -i '' "s/^palette = .*/palette = 'catppuccin_latte'/" ~/.config/starship.toml
        command sed -i '' 's|catppuccin-mocha-transparent|catppuccin-latte-transparent|' ~/.config/k9s/config.yaml
        command sed -i '' 's|"theme": "dark-ansi"|"theme": "light-ansi"|' ~/.claude.json
    end
end
