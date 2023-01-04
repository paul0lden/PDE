#!/bin/bash

install_nvim_config() {
  CONFIG=~/.config/nvim/init.lua
  if test -f "$CONFIG"; then
    mv ~/.config/nvim/init.lua ~/.config/nvim/old.init.lua
  fi

  rm -rf ~/.config/nvim/lua/berserker/*

  cp -r ./neovim/* ~/.config/nvim/

  echo "nvim config installed"
}

install_hypr() {
  CONFIGLOC=~/.config/hypr/
  CONFIG=hyprland.conf
  BG=hyprpaper.conf

  if test -f "${CONFIGLOC}${CONFIG}"; then
    mv "${CONFIGLOC}${CONFIG}" "${CONFIGLOC}.old.${CONFIG}" 
  fi
  if test -f "${CONFIGLOC}${BG}"; then
    mv "${CONFIGLOC}${BG}" "${CONFIGLOC}.old.${BG}"
  fi

  cp "./hyprland/config/${CONFIG}" "${CONFIGLOC}${CONFIG}"
  cp "./hyprland/config/${BG}" "${CONFIGLOC}${BG}"

  cp ./hyprland/wrappedhl ~/.local/bin
}

while : ; do
  case "$1" in
    -n)
      install_nvim_config
      exit 0;
      ;;
    -h)
      install_hypr
      exit 0;
      ;;
    *)
      break ;;
  esac
shift
done
exit 0;
