tag @s add ff_trap_place_owner_check
execute as @e[type=minecraft:marker,tag=ff_trap] if score @s ff_trap_type = @a[tag=ff_trap_place_owner_check,limit=1] ff_trap_selected if score @s ff_active_uuid_0 = @a[tag=ff_trap_place_owner_check,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_trap_place_owner_check,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_trap_place_owner_check,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_trap_place_owner_check,limit=1] ff_active_uuid_3 run return run function fossil_frights:items/heists/trap/common/selected_trap_already_deployed
tag @s remove ff_trap_place_owner_check
return 1
