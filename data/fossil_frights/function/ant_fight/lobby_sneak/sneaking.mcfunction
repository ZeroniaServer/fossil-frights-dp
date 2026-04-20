scoreboard players add @s ff_ant_sneak_ticks 1
scoreboard players set @s ff_ant_unsneak_ticks 0
execute if score @s ff_ant_sneak_ticks matches 200.. run effect give @s minecraft:blindness 2 0 true
execute if score @s ff_ant_sneak_ticks matches 200.. run tag @s add ff_ant_lobby_blind
execute if score @s ff_ant_sneak_ticks matches 200.. run scoreboard players set @s ff_ant_blind_ticks 30
