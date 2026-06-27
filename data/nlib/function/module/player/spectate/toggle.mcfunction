## called when: toggling spectator mode
## called by: function nlib:module/player/spectate/root

# start spectating
execute if entity @s[gamemode=spectator] run tag @s add nlib.spectating
execute if entity @s[gamemode=spectator] run function nlib:module/player/spectate/waypoint/set
execute if entity @s[gamemode=spectator] run function nlib:module/player/spectate/inventory/save
execute if entity @s[gamemode=spectator] run function nlib:module/player/trigger/spectate_menu/enable
execute if entity @s[gamemode=spectator] run function #nlib:module/player/spectate_start

# end spectating
execute if entity @s[gamemode=!spectator] run tag @s remove nlib.spectating
execute if entity @s[gamemode=!spectator] run function nlib:module/player/spectate/waypoint/reset
execute if entity @s[gamemode=!spectator] run function nlib:module/player/spectate/inventory/load
execute if entity @s[gamemode=!spectator] run scoreboard players reset @s spectate_menu
execute if entity @s[gamemode=!spectator] run function #nlib:module/player/spectate_end
