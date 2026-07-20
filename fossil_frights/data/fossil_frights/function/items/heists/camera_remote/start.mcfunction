function fossil_frights:items/heists/camera_remote/kill_owned
data remove storage fossil_frights:forced_spectate return
data remove storage fossil_frights:forced_spectate mannequin
data modify storage fossil_frights:forced_spectate UUID set from entity @s UUID
data modify storage fossil_frights:forced_spectate mannequin.u0 set from storage fossil_frights:forced_spectate UUID[0]
data modify storage fossil_frights:forced_spectate mannequin.u1 set from storage fossil_frights:forced_spectate UUID[1]
data modify storage fossil_frights:forced_spectate mannequin.u2 set from storage fossil_frights:forced_spectate UUID[2]
data modify storage fossil_frights:forced_spectate mannequin.u3 set from storage fossil_frights:forced_spectate UUID[3]
data modify storage fossil_frights:forced_spectate mannequin.rotation set from entity @s Rotation
function fossil_frights:player/util/write_username {to:"storage fossil_frights:forced_spectate mannequin.name"}
function fossil_frights:cameras/save_return_position
execute at @s run function fossil_frights:items/heists/camera_remote/spawn_dummy_macro with storage fossil_frights:forced_spectate mannequin
loot replace entity @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] armor.head loot fossil_frights:items/heists/security_hat
loot replace entity @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] weapon.mainhand loot fossil_frights:items/heists/camera_remote
attribute @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] minecraft:max_health base set 1000
attribute @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] minecraft:knockback_resistance base set 2
data merge entity @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] {Health:1000.0f}
effect give @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] minecraft:regeneration infinite 99 true
data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
tag @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] remove ff_camera_remote_dummy_new
tag @s add ff_forced_spectate
tag @s add ff_camera_remote_active
gamemode spectator @s
team join ff_security_camera @e[type=cave_spider,tag=security_camera]

execute store result score @s ff_security_camera run scoreboard players get @n[tag=security_camera] ff_security_camera
execute at @s run function fossil_frights:items/heists/camera_remote/get_camera_region

scoreboard players set @s ff_security_camera_nav 0
scoreboard players set @s ff_security_camera_heist 0
function fossil_frights:cameras/select_camera
function fossil_frights:cameras/show_nav
function fossil_frights:cameras/update_camera_models
function fossil_frights:cameras/lights_disabled/update
execute at @s run playsound fossil-frights:camera.open master @s ~ ~ ~ 1 1
