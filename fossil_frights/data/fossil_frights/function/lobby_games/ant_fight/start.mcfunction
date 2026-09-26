function fossil_frights:lobby_games/stop_all
function fossil_frights:lobby_games/ant_fight/lobby_sneak/reset
scoreboard players add @s ff_ant_score 0
tag @s add ff_ant_fight
scoreboard players set @s ff_ant_fight 1
attribute @s minecraft:scale base set 0.5
attribute @s minecraft:below_name_distance modifier add fossil_frights:ant_fight 8 add_value
clear @s
loot give @s loot fossil_frights:items/other/infinileaf
scoreboard players operation @s ff_ant_leaf_seen = @s ff_ant_leaf_use
scoreboard players set @s ff_ant_immunity 35
function fossil_frights:lobby_games/ant_fight/music/start
