execute unless entity @e[type=minecraft:snowball,distance=..3,limit=1,sort=nearest,tag=!ff_ant_marked] run return 0
tag @e[type=minecraft:snowball,distance=..3,limit=1,sort=nearest,tag=!ff_ant_marked] add ff_ant_marked
scoreboard players operation @s ff_ant_leaf_seen = @s ff_ant_leaf_use
