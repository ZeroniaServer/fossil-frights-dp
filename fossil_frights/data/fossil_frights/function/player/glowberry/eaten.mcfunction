advancement revoke @s only fossil_frights:glowberry_eat
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_guard,gamemode=!spectator] run return 0
gamerule minecraft:show_death_messages false
tellraw @a [{"translate":"ff.death.poisonous_glowberry","with":[{"selector":"@s","separator":""}],"color":"white"}]
kill @s
gamerule minecraft:show_death_messages true
