tp @e[type=mannequin,tag=ff_check_security_dummy] 0 -200 0
kill @e[type=mannequin,tag=ff_check_security_dummy]
setblock -28 70 38 air
setblock -27 70 36 air
data remove storage fossil_frights:forced_spectate return
data remove storage fossil_frights:forced_spectate mannequin
data modify storage fossil_frights:forced_spectate UUID set from entity @s UUID
data modify storage fossil_frights:forced_spectate mannequin.u0 set from storage fossil_frights:forced_spectate UUID[0]
data modify storage fossil_frights:forced_spectate mannequin.u1 set from storage fossil_frights:forced_spectate UUID[1]
data modify storage fossil_frights:forced_spectate mannequin.u2 set from storage fossil_frights:forced_spectate UUID[2]
data modify storage fossil_frights:forced_spectate mannequin.u3 set from storage fossil_frights:forced_spectate UUID[3]
execute at @s summon marker run function fossil_frights:tasks/easy/check_security/forced_spectate_get_position
function fossil_frights:tasks/easy/check_security/spawn_dummy_macro with storage fossil_frights:forced_spectate mannequin
tag @s add ff_forced_spectate
gamemode spectator @s
execute unless entity @e[type=cave_spider,tag=security_camera] run function fossil_frights:tasks/easy/check_security/camera_setup
execute if entity @e[tag=security_camera,limit=1] run spectate @e[type=cave_spider,tag=security_camera,sort=random,limit=1] @s
setblock -28 70 38 minecraft:redstone_wire[east=side,north=side,south=side,west=side]
setblock -27 70 36 minecraft:redstone_wire[east=side,north=side,south=side,west=side]
setblock -12 71 20 minecraft:polished_tuff_stairs[waterlogged=true,facing=north]
