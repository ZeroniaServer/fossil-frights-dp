advancement revoke @s only fossil_frights:util/player/upwards_impulse/post

execute if score #player_game_type ff_dummy matches 0 run gamemode survival @s
execute if score #player_game_type ff_dummy matches 1 run gamemode creative @s
execute if score #player_game_type ff_dummy matches 2 run gamemode adventure @s
execute if score #player_game_type ff_dummy matches 3 run gamemode spectator @s

execute positioned as @e[limit=1,type=minecraft:marker,tag=ff_upwards_impulse.origin] run tp @s ~ ~ ~
kill @e[limit=1,type=minecraft:marker,tag=ff_upwards_impulse.origin]
