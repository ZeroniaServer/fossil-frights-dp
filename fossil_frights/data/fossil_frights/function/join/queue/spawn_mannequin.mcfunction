data remove storage fossil_frights:queue mannequin
execute store result storage fossil_frights:queue mannequin.u0 int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:queue mannequin.u1 int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:queue mannequin.u2 int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:queue mannequin.u3 int 1 run scoreboard players get @s ff_active_uuid_3
function fossil_frights:join/queue/spawn_mannequin_macro with storage fossil_frights:queue mannequin
attribute @e[type=mannequin,tag=ff_queue_new,limit=1] minecraft:max_health base set 1000
attribute @e[type=mannequin,tag=ff_queue_new,limit=1] minecraft:knockback_resistance base set 2
data merge entity @e[type=mannequin,tag=ff_queue_new,limit=1] {Health:1000.0f}
effect give @e[type=mannequin,tag=ff_queue_new,limit=1] minecraft:regeneration infinite 99 true
scoreboard players operation @e[type=mannequin,tag=ff_queue_new,limit=1] ff_queue_order = @s ff_queue_order
scoreboard players operation @e[type=mannequin,tag=ff_queue_new,limit=1] ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=mannequin,tag=ff_queue_new,limit=1] ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=mannequin,tag=ff_queue_new,limit=1] ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=mannequin,tag=ff_queue_new,limit=1] ff_active_uuid_3 = @s ff_active_uuid_3
team join ff_queue_mannequin @e[type=mannequin,tag=ff_queue_new,limit=1]
tag @e[type=mannequin,tag=ff_queue_new,limit=1] remove ff_queue_new
function fossil_frights:join/queue/refresh_positions
