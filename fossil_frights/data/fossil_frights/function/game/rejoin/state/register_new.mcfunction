summon minecraft:marker ~ ~ ~ {Tags:["ff_rejoin_marker","ff_rejoin_new"]}
data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score @e[type=minecraft:marker,tag=ff_rejoin_new,sort=nearest,limit=1] ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score @e[type=minecraft:marker,tag=ff_rejoin_new,sort=nearest,limit=1] ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score @e[type=minecraft:marker,tag=ff_rejoin_new,sort=nearest,limit=1] ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score @e[type=minecraft:marker,tag=ff_rejoin_new,sort=nearest,limit=1] ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
summon minecraft:armor_stand ~ ~ ~ {Tags:["ff_rejoin_head","ff_rejoin_head_new"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_rejoin_head_new,sort=nearest,limit=1] ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_rejoin_head_new,sort=nearest,limit=1] ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_rejoin_head_new,sort=nearest,limit=1] ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_rejoin_head_new,sort=nearest,limit=1] ff_active_uuid_3 = @s ff_active_uuid_3
item replace entity @e[type=minecraft:armor_stand,tag=ff_rejoin_head_new,sort=nearest,limit=1] armor.head from entity @s armor.head
tp @e[type=minecraft:armor_stand,tag=ff_rejoin_head_new,sort=nearest,limit=1] 0 -64 0
tag @e[type=minecraft:armor_stand,tag=ff_rejoin_head_new,limit=1] remove ff_rejoin_head_new
function fossil_frights:player/util/write_username {to:"storage fossil_frights:rejoin new.name"}
function fossil_frights:game/rejoin/state/register_name_macro with storage fossil_frights:rejoin new
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard] run tag @e[type=minecraft:marker,tag=ff_rejoin_new,sort=nearest,limit=1] add ff_rejoin_heists_guard
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_thief] run tag @e[type=minecraft:marker,tag=ff_rejoin_new,sort=nearest,limit=1] add ff_rejoin_heists_thief
execute unless predicate fossil_frights:game_state/heist_mode_active run tag @e[type=minecraft:marker,tag=ff_rejoin_new,sort=nearest,limit=1] add ff_rejoin_frights
execute if entity @s[tag=ff_camera_remote_active] run tag @e[type=minecraft:marker,tag=ff_rejoin_new,sort=nearest,limit=1] add ff_rejoin_camera
tag @e[type=minecraft:marker,tag=ff_rejoin_new,sort=nearest,limit=1] add ff_rejoin_match
function fossil_frights:game/rejoin/state/save_position
tag @e[type=minecraft:marker,tag=ff_rejoin_match] remove ff_rejoin_match
tag @e[type=minecraft:marker,tag=ff_rejoin_new,sort=nearest,limit=1] remove ff_rejoin_new
