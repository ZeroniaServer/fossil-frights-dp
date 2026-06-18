execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:temple_run/end
function fossil_frights:ant_fight/lobby_sneak/reset
scoreboard players add @s ff_ant_score 0
tag @s add ff_ant_fight
scoreboard players set @s ff_ant_fight 1
attribute @s minecraft:scale base set 0.5
clear @s
loot give @s loot fossil_frights:items/other/infinileaf
scoreboard players operation @s ff_ant_leaf_seen = @s ff_ant_leaf_use
scoreboard players set @s ff_ant_immunity 35
