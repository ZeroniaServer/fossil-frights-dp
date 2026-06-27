## ticked as: server
## ticked by: function #minecraft:tick

# library status
execute unless score $nlib nlib.setting matches 1 run return fail

# time
scoreboard players remove .20t dummy 1
execute if score .20t dummy matches ..-20 run scoreboard players set .20t dummy 0

## tick entities
execute as @a at @s run function nlib:core/tick/player
