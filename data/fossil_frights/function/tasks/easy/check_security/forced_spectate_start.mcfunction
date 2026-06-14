execute if score $heist_mode_active ff_game_state matches 1 run return 0
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
function fossil_frights:tasks/easy/check_security/save_return_position
function fossil_frights:tasks/easy/check_security/spawn_dummy_macro with storage fossil_frights:forced_spectate mannequin
tag @s add ff_forced_spectate
gamemode spectator @s
team join ff_security_camera @e[type=cave_spider,tag=security_camera]
scoreboard players set @s ff_security_camera 1
scoreboard players set @s ff_security_camera_nav 0
function fossil_frights:tasks/easy/check_security/select_camera
function fossil_frights:tasks/easy/check_security/show_nav
setblock -28 70 38 minecraft:redstone_wire[east=side,north=side,south=side,west=side]
setblock -27 70 36 minecraft:redstone_wire[east=side,north=side,south=side,west=side]
setblock -12 71 20 minecraft:polished_tuff_stairs[waterlogged=true,facing=north]
