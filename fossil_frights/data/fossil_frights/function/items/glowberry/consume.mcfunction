advancement revoke @s only fossil_frights:items/glowberry/consume
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless entity @s[gamemode=!spectator] run return 0
gamerule minecraft:show_death_messages false
tellraw @a [{"translate":"ff.death.poisonous_glowberry","with":[{"selector":"@s","separator":""}],"color":"white"}]
kill @s
gamerule minecraft:show_death_messages true
