tp @e[type=mannequin,tag=ff_check_security_dummy] 0 -200 0
kill @e[type=mannequin,tag=ff_check_security_dummy]
setblock -28 70 38 air
setblock -27 70 36 air
data remove storage fossil_frights:forced_spectate return
data remove storage fossil_frights:forced_spectate mannequin
data modify storage fossil_frights:forced_spectate return.x set from entity @s Pos[0]
data modify storage fossil_frights:forced_spectate return.y set from entity @s Pos[1]
data modify storage fossil_frights:forced_spectate return.z set from entity @s Pos[2]
data modify storage fossil_frights:forced_spectate return.yaw set from entity @s Rotation[0]
data modify storage fossil_frights:forced_spectate return.pitch set from entity @s Rotation[1]
execute store result storage fossil_frights:forced_spectate mannequin.u0 int 1 run data get entity @s UUID[0] 1
execute store result storage fossil_frights:forced_spectate mannequin.u1 int 1 run data get entity @s UUID[1] 1
execute store result storage fossil_frights:forced_spectate mannequin.u2 int 1 run data get entity @s UUID[2] 1
execute store result storage fossil_frights:forced_spectate mannequin.u3 int 1 run data get entity @s UUID[3] 1
function fossil_frights:tasks/easy/check_security/spawn_dummy_macro with storage fossil_frights:forced_spectate mannequin
tag @s add ff_forced_spectate
gamemode spectator @s
execute if entity @e[type=minecraft:armor_stand,tag=security_camera,limit=1] run spectate @e[type=minecraft:armor_stand,tag=security_camera,sort=random,limit=1] @s
setblock -28 70 38 minecraft:redstone_wire[east=side,north=side,south=side,west=side]
setblock -27 70 36 minecraft:redstone_wire[east=side,north=side,south=side,west=side]
setblock -12 71 20 minecraft:polished_tuff_stairs[waterlogged=true,facing=north]
