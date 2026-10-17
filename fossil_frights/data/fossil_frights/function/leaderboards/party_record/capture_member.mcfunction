data modify storage fossil_frights:party_record pending.name set from entity @s data.name
data modify storage fossil_frights:party_record pending.uuid set value [I;0,0,0,0]
execute store result storage fossil_frights:party_record pending.uuid[0] int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:party_record pending.uuid[1] int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:party_record pending.uuid[2] int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:party_record pending.uuid[3] int 1 run scoreboard players get @s ff_active_uuid_3

tag @e[type=minecraft:marker,tag=ff_lb_party_record_member_new] remove ff_lb_party_record_member_new
summon minecraft:marker 0 -64 0 {Tags:["ff_lb_party_record_member","ff_lb_party_record_member_new"]}
data modify entity @e[type=minecraft:marker,tag=ff_lb_party_record_member_new,limit=1] data.name set from storage fossil_frights:party_record pending.name
data modify entity @e[type=minecraft:marker,tag=ff_lb_party_record_member_new,limit=1] data.uuid set from storage fossil_frights:party_record pending.uuid
tag @e[type=minecraft:marker,tag=ff_lb_party_record_member_new] remove ff_lb_party_record_member_new
