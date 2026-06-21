-- You can put custom rules here
-- Window/layer rules: https://wiki.hyprland.org/Configuring/Window-Rules/
-- Workspace rules: https://wiki.hyprland.org/Configuring/Workspace-Rules/

-- ######## Window rules ########

hl.window_rule({
    match = {
        class = "discord",
    },
    workspace = "2 silent",
})

hl.window_rule({
    match = {
        class = "notion-electron",
    },
    workspace = "3",
})

hl.window_rule({
    match = {
        class = "net.lutris.Lutris",
    },
    workspace = "3",
})

hl.window_rule({
    match = {
        class = "pavucontrol-qt",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "Waydroid",
    },
    float = true,
    size = "(monitor_w*0.23) (monitor_h*0.8)",
})

hl.window_rule({
    match = {
        class = "waydroid.*",
    },
    float = true,
    size = "(monitor_w*0.23) (monitor_h*0.8)",
})

-- windowrule = match:class Waydroid, float 1
-- windowrule = match:class waydroid.*, float 1
hl.window_rule({
    match = {
        class = "wihotspot",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "scrcpy",
    },
    float = true,
    size = "(monitor_w*0.167) (monitor_h*0.64)",
})

hl.window_rule({
    match = {
        class = "org.kde.dolphin",
    },
    float = true,
    size = "(monitor_w*0.6) (monitor_h*0.6)",
})

hl.window_rule({
    match = {
        class = "dolphin",
    },
    float = true,
    center = true,
    size = "(monitor_w*0.6) (monitor_h*0.6)",
})

hl.window_rule({
    match = {
        class = "chrome-nngceckbapebfimnlniiiahkandclblb-Default",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "steam",
    },
    workspace = "4",
})

hl.window_rule({
    match = {
        title = "Sign\\sin\\sto\\sSteam",
    },
    center = true,
})

hl.window_rule({
    match = {
        class = "teams-for-linux",
    },
    workspace = "4",
})

hl.window_rule({
    name = "\"Float steam menus\"",
    match = {
        class = "steam",
        title = "negative:Steam|Steam\\sBig\\sPicture\\sMode",
    },
    float = true,
})

hl.window_rule({
    name = "\"Make steam big picture mode full screen\"",
    match = {
        title = "Steam\\sBig\\sPicture\\sMode",
    },
    fullscreen = true,
})

hl.window_rule({
    name = "\"Fix Forza\"",
    match = {
        class = "negative:steam",
        title = "Forza\\sHorizon\\s4",
    },
    rounding = 0,
    fullscreen = true,
})

-- Terminal blur
hl.window_rule({
    match = {
        class = "Alacritty",
    },
    opacity = "0.89 override 0.79 override",
    no_blur = false,
})

-- Uncomment to apply global transparency to all windows:
-- windowrule = opacity 0.89 override 0.89 override, match:class .*

-- Disable blur for all xwayland apps
-- windowrule = no_blur on, match:xwayland 1
