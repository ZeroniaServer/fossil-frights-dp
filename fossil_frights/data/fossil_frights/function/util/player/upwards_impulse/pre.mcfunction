advancement revoke @s only fossil_frights:util/player/upwards_impulse/pre

summon minecraft:marker ~ ~ ~ {Tags:["ff_upwards_impulse","ff_upwards_impulse.origin"]}

tag @s add ff_upwards_impulse.player
execute as @e[type=minecraft:area_effect_cloud,tag=ff_upwards_impulse.pre] if function fossil_frights:util/player/upwards_impulse/pre/check_owner positioned as @s run tp @a[limit=1,tag=ff_upwards_impulse.player] ~ ~ ~
tag @s remove ff_upwards_impulse.player

scoreboard players set #player_game_type ff_dummy 0
execute if entity @s[gamemode=creative] run scoreboard players set #player_game_type ff_dummy 1
execute if entity @s[gamemode=adventure] run scoreboard players set #player_game_type ff_dummy 2
execute if entity @s[gamemode=spectator] run scoreboard players set #player_game_type ff_dummy 3
gamemode creative @s
