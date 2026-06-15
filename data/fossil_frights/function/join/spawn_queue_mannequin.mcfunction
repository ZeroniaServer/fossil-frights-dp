data remove storage fossil_frights:queue mannequin
data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result storage fossil_frights:queue mannequin.u0 int 1 run data get storage fossil_frights:nbt uuid[0] 1
execute store result storage fossil_frights:queue mannequin.u1 int 1 run data get storage fossil_frights:nbt uuid[1] 1
execute store result storage fossil_frights:queue mannequin.u2 int 1 run data get storage fossil_frights:nbt uuid[2] 1
execute store result storage fossil_frights:queue mannequin.u3 int 1 run data get storage fossil_frights:nbt uuid[3] 1
data remove storage fossil_frights:nbt uuid
function fossil_frights:join/spawn_queue_mannequin_macro with storage fossil_frights:queue mannequin
attribute @e[type=mannequin,tag=ff_queue_new,limit=1] minecraft:max_health base set 1000
attribute @e[type=mannequin,tag=ff_queue_new,limit=1] minecraft:knockback_resistance base set 2
data merge entity @e[type=mannequin,tag=ff_queue_new,limit=1] {Health:1000.0f}
effect give @e[type=mannequin,tag=ff_queue_new,limit=1] minecraft:regeneration infinite 99 true
scoreboard players operation @e[type=mannequin,tag=ff_queue_new,limit=1] ff_queue_order = @s ff_queue_order
data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score @e[type=mannequin,tag=ff_queue_new,limit=1] ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score @e[type=mannequin,tag=ff_queue_new,limit=1] ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score @e[type=mannequin,tag=ff_queue_new,limit=1] ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score @e[type=mannequin,tag=ff_queue_new,limit=1] ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
team join ff_queue_mannequin @e[type=mannequin,tag=ff_queue_new,limit=1]
tag @e[type=mannequin,tag=ff_queue_new,limit=1] remove ff_queue_new
function fossil_frights:join/refresh_queue_positions
