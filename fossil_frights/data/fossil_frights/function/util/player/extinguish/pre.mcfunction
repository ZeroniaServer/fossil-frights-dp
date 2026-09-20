advancement revoke @s only fossil_frights:util/player/extinguish/pre

summon minecraft:marker ~ ~ ~ {Tags:["ff_extinguish","ff_extinguish.origin"]}

tag @s add ff_extinguish.player
execute as @e[type=minecraft:area_effect_cloud,tag=ff_extinguish] if function fossil_frights:util/player/extinguish/pre/check_owner positioned as @s run tp @a[limit=1,tag=ff_extinguish.player] ~ ~ ~
tag @s remove ff_extinguish.player

scoreboard players set #player_game_type ff_dummy 0
execute if entity @s[gamemode=creative] run scoreboard players set #player_game_type ff_dummy 1
execute if entity @s[gamemode=adventure] run scoreboard players set #player_game_type ff_dummy 2
execute if entity @s[gamemode=spectator] run scoreboard players set #player_game_type ff_dummy 3
gamemode creative @s
