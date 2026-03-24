data remove storage fossil_frights:forced_spectate return
data modify storage fossil_frights:forced_spectate return.x set from entity @s Pos[0]
data modify storage fossil_frights:forced_spectate return.y set from entity @s Pos[1]
data modify storage fossil_frights:forced_spectate return.z set from entity @s Pos[2]
data modify storage fossil_frights:forced_spectate return.yaw set from entity @s Rotation[0]
data modify storage fossil_frights:forced_spectate return.pitch set from entity @s Rotation[1]
tag @s add ff_forced_spectate
gamemode spectator @s
execute if entity @e[type=minecraft:armor_stand,tag=security_camera,limit=1] run spectate @e[type=minecraft:armor_stand,tag=security_camera,sort=random,limit=1] @s
setblock -12 71 20 minecraft:polished_tuff_stairs[waterlogged=true,facing=north]
