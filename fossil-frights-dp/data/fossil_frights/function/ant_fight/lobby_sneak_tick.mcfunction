scoreboard players add @s ff_ant_sneak_time 0
scoreboard players add @s ff_ant_sneak_seen 0
scoreboard players add @s ff_ant_sneak_ticks 0
scoreboard players add @s ff_ant_unsneak_ticks 0
scoreboard players add @s ff_ant_blind_ticks 0
execute if score @s ff_ant_sneak_time > @s ff_ant_sneak_seen run function fossil_frights:ant_fight/lobby_sneak/sneaking
execute unless score @s ff_ant_sneak_time > @s ff_ant_sneak_seen run function fossil_frights:ant_fight/lobby_sneak/not_sneaking
scoreboard players operation @s ff_ant_sneak_seen = @s ff_ant_sneak_time
