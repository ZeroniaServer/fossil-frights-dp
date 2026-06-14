function fossil_frights:items/heists/camera_remote/kill_owned
data remove storage fossil_frights:forced_spectate return
data remove storage fossil_frights:forced_spectate mannequin
data modify storage fossil_frights:forced_spectate UUID set from entity @s UUID
data modify storage fossil_frights:forced_spectate mannequin.u0 set from storage fossil_frights:forced_spectate UUID[0]
data modify storage fossil_frights:forced_spectate mannequin.u1 set from storage fossil_frights:forced_spectate UUID[1]
data modify storage fossil_frights:forced_spectate mannequin.u2 set from storage fossil_frights:forced_spectate UUID[2]
data modify storage fossil_frights:forced_spectate mannequin.u3 set from storage fossil_frights:forced_spectate UUID[3]
data modify storage fossil_frights:forced_spectate mannequin.rotation set from entity @s Rotation
data modify storage fossil_frights:forced_spectate mannequin.name set from entity @s bukkit.lastKnownName
execute at @s summon marker run function fossil_frights:tasks/easy/check_security/forced_spectate_get_position
execute at @s run function fossil_frights:items/heists/camera_remote/spawn_dummy_macro with storage fossil_frights:forced_spectate mannequin
loot replace entity @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] armor.head loot fossil_frights:items/heists/security_hat
loot replace entity @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] weapon.mainhand loot fossil_frights:items/heists/camera_remote
attribute @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] minecraft:max_health base set 1000
attribute @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] minecraft:knockback_resistance base set 2
data merge entity @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] {Health:1000.0f}
effect give @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] minecraft:regeneration infinite 99 true
data modify storage fossil_frights:uuid this set from entity @s UUID
execute store result score @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] ff_active_uuid_0 run data get storage fossil_frights:uuid this[0]
execute store result score @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] ff_active_uuid_1 run data get storage fossil_frights:uuid this[1]
execute store result score @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] ff_active_uuid_2 run data get storage fossil_frights:uuid this[2]
execute store result score @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] ff_active_uuid_3 run data get storage fossil_frights:uuid this[3]
data remove storage fossil_frights:uuid this
tag @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy_new,sort=nearest,limit=1] remove ff_camera_remote_dummy_new
tag @s add ff_forced_spectate
tag @s add ff_camera_remote_active
gamemode spectator @s
team join ff_security_camera @e[type=cave_spider,tag=security_camera]
execute store result score @s ff_security_camera run scoreboard players get @n[tag=security_camera] ff_security_camera
scoreboard players set @s ff_security_camera_nav 0
function fossil_frights:tasks/easy/check_security/select_camera
function fossil_frights:tasks/easy/check_security/show_nav
