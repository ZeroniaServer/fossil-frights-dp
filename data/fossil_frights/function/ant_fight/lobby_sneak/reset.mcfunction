execute if entity @s[tag=ff_ant_lobby_blind] run effect clear @s minecraft:blindness
tag @s remove ff_ant_lobby_blind
scoreboard players add @s ff_ant_sneak_time 0
scoreboard players set @s ff_ant_sneak_ticks 0
scoreboard players set @s ff_ant_unsneak_ticks 0
scoreboard players set @s ff_ant_blind_ticks 0
scoreboard players operation @s ff_ant_sneak_seen = @s ff_ant_sneak_time
