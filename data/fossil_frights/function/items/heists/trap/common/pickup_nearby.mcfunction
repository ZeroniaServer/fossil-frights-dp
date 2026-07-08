tag @s remove ff_trap_picked_up
tag @s add ff_trap_picker
execute if predicate fossil_frights:player/input/sneak as @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..1.6] if score @s ff_active_uuid_0 = @a[tag=ff_trap_picker,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_trap_picker,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_trap_picker,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_trap_picker,limit=1] ff_active_uuid_3 run function fossil_frights:items/heists/trap/common/pickup_marker
tag @s remove ff_trap_picker
