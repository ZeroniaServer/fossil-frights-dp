## called when: player activates keybind
## called by: function nlib:module/player/spectate/toggle

# cooldown
scoreboard players operation @s nlib.cooldown.spectator_input = $nlib.cooldown.spectate_input nlib.setting

# payload
function #nlib:module/player/spectate_menu
