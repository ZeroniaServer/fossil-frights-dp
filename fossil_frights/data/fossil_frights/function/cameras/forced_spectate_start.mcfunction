execute if predicate fossil_frights:game_state/heist_mode_active run return 0
tp @e[type=mannequin,tag=ff_check_security_dummy] 0 -200 0
kill @e[type=mannequin,tag=ff_check_security_dummy]
setblock -28 70 38 air
data remove storage fossil_frights:forced_spectate return
data remove storage fossil_frights:forced_spectate mannequin
execute store result storage fossil_frights:forced_spectate mannequin.u0 int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:forced_spectate mannequin.u1 int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:forced_spectate mannequin.u2 int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:forced_spectate mannequin.u3 int 1 run scoreboard players get @s ff_active_uuid_3
function fossil_frights:cameras/save_return_position
function fossil_frights:cameras/spawn_dummy_macro with storage fossil_frights:forced_spectate mannequin
tag @s add ff_forced_spectate
gamemode spectator @s
team join ff_security_camera @e[type=cave_spider,tag=security_camera]
scoreboard players set @s ff_security_camera 1
scoreboard players set @s ff_security_camera_nav 0
function fossil_frights:cameras/select_camera
function fossil_frights:cameras/show_nav
function fossil_frights:cameras/update_camera_models
function fossil_frights:cameras/lights_disabled/update
execute at @s run playsound fossil-frights:camera.open master @s ~ ~ ~ 1 1
execute unless predicate fossil_frights:world/is_realms run setblock -28 70 38 minecraft:redstone_wire[east=side,north=side,south=side,west=side] strict
setblock -12 71 20 minecraft:polished_tuff_stairs[waterlogged=true,facing=north]
