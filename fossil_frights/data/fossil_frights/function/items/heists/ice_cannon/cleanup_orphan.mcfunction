tag @s add ff_ice_freeze_orphan_source
tag @e[type=minecraft:block_display,tag=ff_ice_freeze] remove ff_ice_freeze_orphan_match
execute as @e[type=minecraft:block_display,tag=ff_ice_freeze] if score @s ff_active_uuid_0 = @a[tag=ff_ice_freeze_orphan_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_ice_freeze_orphan_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_ice_freeze_orphan_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_ice_freeze_orphan_source,limit=1] ff_active_uuid_3 run tag @s add ff_ice_freeze_orphan_match
execute unless entity @e[type=minecraft:block_display,tag=ff_ice_freeze_orphan_match,limit=1] run function fossil_frights:items/heists/ice_cannon/restore_player
tag @e[type=minecraft:block_display,tag=ff_ice_freeze_orphan_match] remove ff_ice_freeze_orphan_match
tag @s remove ff_ice_freeze_orphan_source
