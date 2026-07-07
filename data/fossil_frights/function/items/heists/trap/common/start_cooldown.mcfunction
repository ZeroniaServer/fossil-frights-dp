tag @s add ff_trap_owner_check
execute as @a[team=ff_guard] if score @s ff_active_uuid_0 = @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_active_uuid_3 run function fossil_frights:items/heists/trap/common/start_cooldown_owner
tag @s remove ff_trap_owner_check
