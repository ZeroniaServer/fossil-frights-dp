## ticked as: player with tag nlib.spectate
## ticked by: function nlib:core/tick/player

# toggle
execute if entity @s[gamemode=!spectator,tag=!nlib.spectating] run return fail
execute if entity @s[gamemode=!spectator,tag=nlib.spectating] run return run function nlib:module/player/spectate/toggle
execute if entity @s[gamemode=spectator,tag=!nlib.spectating] run return run function nlib:module/player/spectate/toggle

# force spectate & copy inventory
tag @s add THIS_PLAYER_
execute as @p[gamemode=!spectator] run function nlib:module/player/spectate/spectate
tag @s remove THIS_PLAYER_

# actionbar
execute unless score @s nlib.actionbar matches 0.. run title @s actionbar {score:{objective:'nlib.actionbar.spectate', name:'@s'}}
execute unless score @s nlib.actionbar matches 0.. run scoreboard players set @s nlib.actionbar 0

# noclip
execute if score $nlib.spectate.noclip nlib.setting matches 0 anchored eyes unless block ~ ~1.6 ~ #nlib:spectator_safe run function #nlib:module/player/spectate_noclip

# input controls
execute if score @s nlib.cooldown.spectator_input matches 1.. run return run scoreboard players remove @s nlib.cooldown.spectator_input 1
execute unless entity @s[tag=nlib.flag.disable_spectate_keybind] if predicate nlib:input/jump if predicate nlib:input/sneak run function nlib:module/player/spectate/input/function
