advancement revoke @s only fossil_frights:glowberry_eat
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless entity @s[tag=ff_active,gamemode=!spectator] run return 0
gamerule showDeathMessages false
tellraw @a [{"selector":"@s","separator":"","color":"white"},{"text":" ate a poisonous glow berry.","color":"white"}]
kill @s
gamerule showDeathMessages true
