## runs as/at each player individually
## called by: function nlib:core/tick via #nlib:core/tick/player

## modules

# player/trigger
execute if score @s spectate_menu matches -2147483647.. run function nlib:module/player/trigger/spectate_menu/root
execute if score @s version matches -2147483647.. run function nlib:module/player/trigger/version/root

# player/spectate
execute unless score $nlib.spectate nlib.setting matches 0 if entity @s[tag=nlib.spectate] run function nlib:module/player/spectate/root
execute if entity @s[gamemode=!spectator,tag=nlib.spectating] run function nlib:module/player/spectate/toggle
