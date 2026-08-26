tag @e[type=minecraft:armor_stand,tag=ff_rejoin_head] remove ff_rejoin_head_match
execute as @e[type=minecraft:armor_stand,tag=ff_rejoin_head] if score @s ff_active_uuid_0 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_head_match
item replace entity @e[type=minecraft:armor_stand,tag=ff_rejoin_head_match] armor.head from entity @a[tag=ff_rejoin_source,limit=1] armor.head
tag @e[type=minecraft:armor_stand,tag=ff_rejoin_head_match] remove ff_rejoin_head_match
