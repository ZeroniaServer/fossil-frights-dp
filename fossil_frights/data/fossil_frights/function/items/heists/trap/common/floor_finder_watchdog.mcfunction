execute unless entity @s[tag=ff_trap_place_pending] run return 0
scoreboard players add @s ff_trap_pending_ticks 1
tag @s add ff_trap_pending_owner_check
tag @e[type=minecraft:armor_stand,tag=ff_trap_floor_finder] remove ff_trap_pending_owner_found
execute as @e[type=minecraft:armor_stand,tag=ff_trap_floor_finder] if score @s ff_active_uuid_0 = @a[tag=ff_trap_pending_owner_check,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_trap_pending_owner_check,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_trap_pending_owner_check,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_trap_pending_owner_check,limit=1] ff_active_uuid_3 run tag @s add ff_trap_pending_owner_found
tag @s remove ff_trap_pending_owner_check
execute if score @s ff_trap_pending_ticks matches 41.. as @e[type=minecraft:armor_stand,tag=ff_trap_pending_owner_found] run kill @s
execute unless entity @e[type=minecraft:armor_stand,tag=ff_trap_pending_owner_found] run tag @s remove ff_trap_place_pending
execute unless entity @e[type=minecraft:armor_stand,tag=ff_trap_pending_owner_found] run tag @s add ff_trap_restore_pending
execute unless entity @s[tag=ff_trap_place_pending] run scoreboard players set @s ff_trap_pending_ticks 0
tag @e[type=minecraft:armor_stand,tag=ff_trap_pending_owner_found] remove ff_trap_pending_owner_found
