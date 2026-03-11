#!/usr/bin/env bash
set -euo pipefail

ZELLIJ_CONFIG="${HOME}/.config/zellij/config.kdl"
STARSHIP_CONFIG="${HOME}/.config/starship.toml"
K9S_CONFIG="${HOME}/.config/k9s/config.yaml"
CLAUDE_CONFIG="${HOME}/.claude.json"

case "${1:-}" in
  light)
    sed -i '' -E "s/^theme .*/theme \"catppuccin-latte\"/" "$ZELLIJ_CONFIG"
    sed -i '' "s/^palette = .*/palette = 'catppuccin_latte'/" "$STARSHIP_CONFIG"
    sed -i '' 's|catppuccin-mocha-transparent|catppuccin-latte-transparent|' "$K9S_CONFIG"
    sed -i '' 's|"theme": "dark-ansi"|"theme": "light-ansi"|' "$CLAUDE_CONFIG"
    ;;
  dark)
    sed -i '' -E "s/^theme .*/theme \"catppuccin-mocha\"/" "$ZELLIJ_CONFIG"
    sed -i '' "s/^palette = .*/palette = 'catppuccin_mocha'/" "$STARSHIP_CONFIG"
    sed -i '' 's|catppuccin-latte-transparent|catppuccin-mocha-transparent|' "$K9S_CONFIG"
    sed -i '' 's|"theme": "light-ansi"|"theme": "dark-ansi"|' "$CLAUDE_CONFIG"
    ;;
  *)
    echo "Usage: $0 {light|dark}" >&2
    exit 1
    ;;
esac
