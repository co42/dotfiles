function k9s --wraps=k9s --description 'Launch k9s with theme based on macOS appearance'
    if test (defaults read -g AppleInterfaceStyle 2>/dev/null) = "Dark"
        sed -i '' 's/skin:.*/skin: catppuccin-macchiato-transparent/' ~/.config/k9s/config.yaml
    else
        sed -i '' 's/skin:.*/skin: catppuccin-latte-transparent/' ~/.config/k9s/config.yaml
    end
    command k9s $argv
end
