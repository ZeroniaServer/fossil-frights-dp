advancement revoke @s only fossil_frights:misc/heist_loot_click
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_thief,gamemode=!spectator] unless entity @s[team=ff_guard,gamemode=!spectator] run return 0
tag @s add ff_heist_loot_clicker
execute if entity @s[team=ff_guard] as @e[type=minecraft:interaction,tag=ff_heist_common_loot_click,sort=nearest,limit=1,distance=..10] run function fossil_frights:game/heists/loot/secure_loot/guard_interact
execute if entity @s[team=ff_guard] as @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click,sort=nearest,limit=1,distance=..10] run function fossil_frights:game/heists/loot/secure_loot/guard_interact_heavy
execute if entity @s[team=ff_guard] run tag @s remove ff_heist_loot_clicker
execute if entity @s[team=ff_guard] run return 0
execute as @e[type=minecraft:interaction,tag=ff_heist_common_loot_click,tag=ff_heist_loot_secured,sort=nearest,limit=1,distance=..10] run function fossil_frights:game/heists/loot/secure_loot/thief_interact
execute as @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click,tag=ff_heist_loot_secured,sort=nearest,limit=1,distance=..10] run function fossil_frights:game/heists/loot/secure_loot/thief_interact_heavy
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_misplaced_scissors_click,tag=!ff_heist_loot_secured,sort=nearest,limit=1,distance=..10] run function fossil_frights:game/heists/loot/rare/scissors/route
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_click,tag=!ff_heist_loot_misplaced_scissors_click,tag=!ff_heist_loot_secured,sort=nearest,limit=1,distance=..10] run function fossil_frights:game/heists/loot/route
tag @s remove ff_heist_loot_clicker
