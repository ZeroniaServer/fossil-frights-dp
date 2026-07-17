execute unless entity @e[type=minecraft:snowball,distance=..3,limit=1,sort=nearest,tag=!ff_ant_marked] run return 0
scoreboard players operation @e[type=minecraft:snowball,distance=..3,limit=1,sort=nearest,tag=!ff_ant_marked] ff_ant_proj_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=minecraft:snowball,distance=..3,limit=1,sort=nearest,tag=!ff_ant_marked] ff_ant_proj_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=minecraft:snowball,distance=..3,limit=1,sort=nearest,tag=!ff_ant_marked] ff_ant_proj_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=minecraft:snowball,distance=..3,limit=1,sort=nearest,tag=!ff_ant_marked] ff_ant_proj_3 = @s ff_active_uuid_3
tag @e[type=minecraft:snowball,distance=..3,limit=1,sort=nearest,tag=!ff_ant_marked] add ff_ant_marked
scoreboard players operation @s ff_ant_leaf_seen = @s ff_ant_leaf_use
