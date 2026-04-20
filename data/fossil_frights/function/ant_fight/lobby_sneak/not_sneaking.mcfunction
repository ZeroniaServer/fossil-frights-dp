scoreboard players add @s ff_ant_unsneak_ticks 1
execute if entity @s[tag=ff_ant_lobby_blind] if score @s ff_ant_blind_ticks matches 1.. run effect give @s minecraft:blindness 2 0 true
execute if entity @s[tag=ff_ant_lobby_blind] if score @s ff_ant_blind_ticks matches 1.. run scoreboard players remove @s ff_ant_blind_ticks 1
execute if entity @s[tag=ff_ant_lobby_blind] if score @s ff_ant_blind_ticks matches ..0 run effect clear @s minecraft:blindness
execute if entity @s[tag=ff_ant_lobby_blind] if score @s ff_ant_blind_ticks matches ..0 run tag @s remove ff_ant_lobby_blind
execute if score @s ff_ant_unsneak_ticks matches 20.. run scoreboard players set @s ff_ant_sneak_ticks 0
