execute if score $puffer_fright ff_game_state matches 1 run return 0
execute as @e[type=minecraft:pufferfish,tag=ff_pufferfish_fright,limit=1] at @s as @a[predicate=fossil_frights:player/is_playing,distance=..6,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:water run scoreboard players add $puffer_timer ff_game_state 1
execute as @e[type=minecraft:pufferfish,tag=ff_pufferfish_fright,limit=1] at @s unless entity @a[limit=1,predicate=fossil_frights:player/is_playing,distance=..6] run scoreboard players set $puffer_timer ff_game_state 0
execute as @e[type=minecraft:pufferfish,tag=ff_pufferfish_fright,limit=1] at @s if entity @a[limit=1,predicate=fossil_frights:player/is_playing,distance=..6] as @a[predicate=fossil_frights:player/is_playing,distance=..6,sort=nearest,limit=1] at @s unless block ~ ~ ~ minecraft:water run scoreboard players set $puffer_timer ff_game_state 0
execute if score $puffer_timer ff_game_state matches 20.. run function fossil_frights:frights/puffer/trigger
