
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpm reload -n & ~/bg/bg-parent.sh")
    hl.exec_cmd("sleep 1; waybar & hyprpaper & ~/bg/bg-cava-parent.sh")
 end)

hl.window_rule({
    -- name  = "farbg",
    match = {
        class = "window-bg-2",
    },
	opacity = ".5 override",
})
 if hl.plugin.hyprwinwrap ~= nil then

     hl.plugin.hyprwinwrap.window({
         class = "window-bg1",
         layer = 100,
         pos_x = 0,
         pos_y = 40,
         size_x = 100,
         size_y = 100
     })
     hl.plugin.hyprwinwrap.window({
        class = "window-bg2",
        layer = 90,
        pos_x = 0,
        pos_y = 30,
        size_x = 100,
        size_y = 100,
     })
     hl.plugin.hyprwinwrap.window({
        class = "window-bg3",
        layer = 80,
        pos_x = 0,
        pos_y = 0,
        size_x = 40,
        size_y = 100,
     })
     hl.plugin.hyprwinwrap.window({
        class = "window-bg4",
        layer = 80,
        pos_x = 60,
        pos_y = 0,
        size_x = 100,
        size_y = 100,
     })
     hl.plugin.hyprwinwrap.window({
        class = "window-bg5",
        layer = 80,
        pos_x = 20,
        pos_y = 0,
        size_x = 60,
        size_y = 100,
     })
 end