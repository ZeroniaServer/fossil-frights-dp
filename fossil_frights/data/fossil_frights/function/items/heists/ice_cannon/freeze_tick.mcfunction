scoreboard players add @s ff_ice_freeze_age 1
tag @s add ff_ice_freeze_syncing
tag @a remove ff_ice_freeze_owner
execute as @a if score @s ff_active_uuid_0 = @e[type=minecraft:block_display,tag=ff_ice_freeze_syncing,sort=nearest,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:block_display,tag=ff_ice_freeze_syncing,sort=nearest,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:block_display,tag=ff_ice_freeze_syncing,sort=nearest,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:block_display,tag=ff_ice_freeze_syncing,sort=nearest,limit=1] ff_active_uuid_3 run tag @s add ff_ice_freeze_owner
execute if entity @a[tag=ff_ice_freeze_owner,predicate=fossil_frights:entity/effects/levitation] store result score $ice_freeze_lock_x ff_ice_freeze_age run data get entity @s Pos[0] 1000
execute if entity @a[tag=ff_ice_freeze_owner,predicate=fossil_frights:entity/effects/levitation] store result score $ice_freeze_lock_z ff_ice_freeze_age run data get entity @s Pos[2] 1000
execute if entity @a[tag=ff_ice_freeze_owner,predicate=fossil_frights:entity/effects/levitation] store result storage fossil_frights:ice_freeze_lock x double 0.001 run scoreboard players get $ice_freeze_lock_x ff_ice_freeze_age
execute if entity @a[tag=ff_ice_freeze_owner,predicate=fossil_frights:entity/effects/levitation] store result storage fossil_frights:ice_freeze_lock z double 0.001 run scoreboard players get $ice_freeze_lock_z ff_ice_freeze_age
execute as @a[tag=ff_ice_freeze_owner] at @s if predicate fossil_frights:entity/effects/levitation run function fossil_frights:items/heists/ice_cannon/freeze_lock_xz with storage fossil_frights:ice_freeze_lock
execute as @a[tag=ff_ice_freeze_owner] at @s run tp @e[type=minecraft:block_display,tag=ff_ice_freeze_syncing,limit=1] ~ ~1.0 ~
execute as @a[tag=ff_ice_freeze_owner] if predicate fossil_frights:entity/effects/levitation run attribute @s minecraft:movement_speed base set 0
execute as @a[tag=ff_ice_freeze_owner] unless predicate fossil_frights:entity/effects/levitation run attribute @s minecraft:movement_speed base set 0.055
execute as @a[tag=ff_ice_freeze_owner] if predicate fossil_frights:entity/effects/levitation run data modify entity @s Motion[0] set value 0.0d
execute as @a[tag=ff_ice_freeze_owner] if predicate fossil_frights:entity/effects/levitation run data modify entity @s Motion[2] set value 0.0d
tag @a remove ff_ice_freeze_owner
tag @s remove ff_ice_freeze_syncing
execute unless entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 17 run data merge entity @s {block_state:{Name:"minecraft:frosted_ice",Properties:{age:"1"}}}
execute unless entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 34 run data merge entity @s {block_state:{Name:"minecraft:frosted_ice",Properties:{age:"2"}}}
execute unless entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 50.. run function fossil_frights:items/heists/ice_cannon/freeze_end
execute if entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 34 run data merge entity @s {block_state:{Name:"minecraft:frosted_ice",Properties:{age:"1"}}}
execute if entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 67 run data merge entity @s {block_state:{Name:"minecraft:frosted_ice",Properties:{age:"2"}}}
execute if entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 100.. run function fossil_frights:items/heists/ice_cannon/freeze_end
