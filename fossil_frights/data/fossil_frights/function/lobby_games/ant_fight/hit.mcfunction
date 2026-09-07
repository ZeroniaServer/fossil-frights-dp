tag @s remove ff_ant_fight
function fossil_frights:lobby_games/ant_fight/music/stop
scoreboard players reset @s ff_ant_combo
scoreboard players reset @s ff_ant_combo_shown_until_timestamp
tag @s remove ff_dropped_infinileaf
function fossil_frights:lobby_games/ant_fight/lobby_sneak/reset
scoreboard players set @s ff_ant_fight 0
attribute @s minecraft:scale base reset
attribute @s minecraft:below_name_distance modifier remove fossil_frights:ant_fight
scoreboard players operation @s ff_ant_leaf_seen = @s ff_ant_leaf_use
clear @s minecraft:snowball[minecraft:custom_data~{itemID:"infinileaf"}]
kill @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/infinileaf]
title @s actionbar ""
tp @s -31.5 78.00 98.5 275 -10
function fossil_frights:items/plushies/restore
