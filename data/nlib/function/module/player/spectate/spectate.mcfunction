## ticked as: nearest non-spectator to player with tag nlib.spectate
## ticked by: function nlib:module/player/spectate/root

# force spectate & copy inventory
execute if score $nlib.spectate nlib.setting matches 2 run spectate @s @p[tag=THIS_PLAYER_]
execute if score $nlib.spectate nlib.setting matches 1 run spectate @s @p[tag=THIS_PLAYER_,tag=nlib.spectate.bound]
execute if score .20t dummy matches 0 run function nlib:module/player/spectate/inventory/copy
