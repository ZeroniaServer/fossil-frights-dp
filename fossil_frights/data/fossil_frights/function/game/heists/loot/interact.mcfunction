advancement revoke @s only fossil_frights:misc/heist_loot_click
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_thief,gamemode=!spectator] unless entity @s[team=ff_guard,gamemode=!spectator] run return 0
tag @s add ff_heist_loot_clicker
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[type=minecraft:interaction,tag=ff_heist_loot_click,distance=..10] at @s run function fossil_frights:game/heists/loot/interact_target
tag @s remove ff_heist_loot_clicker
