execute if entity @s[gamemode=spectator] run return 0
tp @s ~ 10004 ~
scoreboard players set #player_game_type ff_dummy 0
execute if entity @s[gamemode=creative] run scoreboard players set #player_game_type ff_dummy 1
execute if entity @s[gamemode=adventure] run scoreboard players set #player_game_type ff_dummy 2
gamemode creative
summon end_crystal ~ 10000 ~ {Tags:["ff_upwards_impulse"]}
damage @e[limit=1,type=minecraft:end_crystal,tag=ff_upwards_impulse] 1 minecraft:player_attack
summon end_crystal ~ 10000 ~ {Tags:["ff_upwards_impulse"]}
damage @e[limit=1,type=minecraft:end_crystal,tag=ff_upwards_impulse] 1 minecraft:player_attack
execute if score #player_game_type ff_dummy matches 0 run gamemode survival
execute if score #player_game_type ff_dummy matches 1 run gamemode creative
execute if score #player_game_type ff_dummy matches 2 run gamemode adventure
tp @s ~ ~ ~
