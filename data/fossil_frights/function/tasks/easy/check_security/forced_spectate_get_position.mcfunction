tp @s ~ ~ ~ ~ ~
data modify storage fossil_frights:forced_spectate return.x set from entity @s Pos[0]
data modify storage fossil_frights:forced_spectate return.y set from entity @s Pos[1]
data modify storage fossil_frights:forced_spectate return.z set from entity @s Pos[2]
data modify storage fossil_frights:forced_spectate return.yaw set from entity @s Rotation[0]
data modify storage fossil_frights:forced_spectate return.pitch set from entity @s Rotation[1]
kill