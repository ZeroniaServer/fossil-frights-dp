advancement revoke @s only fossil_frights:heist_low_loot_click
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_thief,gamemode=!spectator] run return 0
tag @s add ff_heist_low_loot_clicker
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_misplaced_scissors_click,sort=nearest,limit=1,distance=..10] run function fossil_frights:game/heists/loot/high/scissors/route
execute as @e[type=minecraft:interaction,tag=ff_heist_low_loot_click,tag=!ff_heist_loot_misplaced_scissors_click,sort=nearest,limit=1,distance=..10] run function fossil_frights:game/heists/loot/low/route
tag @s remove ff_heist_low_loot_clicker
