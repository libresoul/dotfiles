-- See https://wiki.hyprland.org/Configuring/Binds/
--!
--#! User

hl.bind("CTRL+SUPER + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/illogical-impulse/config.json"))
hl.bind("CTRL+SUPER+ALT + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.conf"))

--#! Apps

hl.bind("SUPER+SHIFT + Return",
  hl.dsp.exec_cmd(
    "~/.config/hypr/hyprland/scripts/launch_first_available.sh \"${TERMINAL}\" \"kitty -1\" \"foot\" \"alacritty\" \"wezterm\" \"konsole\" \"kgx\" \"uxterm\" \"xterm\""))
hl.bind("SUPER + T",
  hl.dsp.exec_cmd(
    "~/.config/hypr/hyprland/scripts/launch_first_available.sh  \"${TERMINAL}\" \"kitty -1\" \"foot\" \"alacritty\" \"wezterm\" \"konsole\" \"kgx\" \"uxterm\" \"xterm\""))
hl.bind("CTRL+ALT + T",
  hl.dsp.exec_cmd(
    "~/.config/hypr/hyprland/scripts/launch_first_available.sh \"${TERMINAL}\" \"kitty -1\" \"foot\" \"alacritty\" \"wezterm\" \"konsole\" \"kgx\" \"uxterm\" \"xterm\""))
hl.bind("SUPER + E",
  hl.dsp.exec_cmd(
    "~/.config/hypr/hyprland/scripts/launch_first_available.sh \"dolphin\" \"nautilus\" \"nemo\" \"thunar\" \"${TERMINAL}\" \"kitty -1 fish -c yazi\""))
hl.bind("SUPER+SHIFT + B",
  hl.dsp.exec_cmd(
    "~/.config/hypr/hyprland/scripts/launch_first_available.sh \"google-chrome-stable\" \"zen-browser\" \"helium-browser\"  \"firefox\" \"brave\" \"chromium\" \"microsoft-edge-stable\" \"opera\" \"librewolf\""))
hl.bind("SUPER+CTRL+SHIFT + B",
  hl.dsp.exec_cmd(
    "~/.config/hypr/hyprland/scripts/launch_first_available.sh \"helium-browser --incognito\"  \"firefox --private\""))
hl.bind("SUPER+SHIFT + D", hl.dsp.exec_cmd("\"discord\""))
hl.bind("SUPER+SHIFT + G", hl.dsp.exec_cmd("\"steam\""))
-- bind = SUPER, C, exec, ~/.config/hypr/hyprland/scripts/launch_first_available.sh "code" "codium" "cursor" "zed" "zedit" "zeditor" "kate" "gnome-text-editor" "emacs" "command -v nvim && kitty -1 nvim" "command -v micro && kitty -1 micro" # Code editor
hl.bind("CTRL+SUPER+SHIFT+ALT + W",
  hl.dsp.exec_cmd(
    "~/.config/hypr/hyprland/scripts/launch_first_available.sh \"wps\" \"onlyoffice-desktopeditors\" \"libreoffice\""))
-- bind = SUPER, X, exec, ~/.config/hypr/hyprland/scripts/launch_first_available.sh "kate" "gnome-text-editor" "emacs" # Text editor
hl.bind("SUPER+SHIFT + V",
  hl.dsp.exec_cmd("~/.config/hypr/hyprland/scripts/launch_first_available.sh \"pavucontrol-qt\" \"pavucontrol\""))
hl.bind("SUPER + I",
  hl.dsp.exec_cmd(
    "XDG_CURRENT_DESKTOP=gnome ~/.config/hypr/hyprland/scripts/launch_first_available.sh \"qs -p ~/.config/quickshell/" ..
    QsConfig .. "/settings.qml\" \"systemsettings\" \"gnome-control-center\" \"better-control\""))
hl.bind("CTRL+ALT + P",
  hl.dsp.exec_cmd(
    "~/.config/hypr/hyprland/scripts/launch_first_available.sh \"gnome-system-monitor\" \"plasma-systemmonitor --page-name Processes\" \"command -v btop && alacritty -e bash -c btop\""))
hl.bind("CTRL+ALT + Return",
  hl.dsp.exec_cmd(
    "~/.config/hypr/hyprland/scripts/launch_first_available.sh \"command -v fastfetch && alacritty -e bash -ic 'fastfetch; exec bash'\""))

-- Add stuff here
-- Use #! to add an extra column on the cheatsheet
-- Use ##! to add a section in that column
-- Add a comment after a bind to add a description, like above

--#! Window

hl.bind("SUPER + h", hl.dsp.window.resize({ x = -30, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + l", hl.dsp.window.resize({ x = 30, y = 0, relative = true }), { repeating = true })
