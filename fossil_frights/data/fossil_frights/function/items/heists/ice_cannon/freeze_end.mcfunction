particle minecraft:dust{color:[0.65f,0.9f,1.0f],scale:1.0f} ~ ~ ~ 0.75 0.75 0.75 0.12 80 force
particle minecraft:snowflake ~ ~ ~ 0.65 0.65 0.65 0.05 45 force
particle minecraft:poof ~ ~ ~ 0.45 0.45 0.45 0.08 24 force
playsound minecraft:block.glass.break player @a[distance=..24] ~ ~ ~ 0.9 0.85
tag @s add ff_ice_freeze_syncing
tag @a remove ff_ice_freeze_owner
execute as @a if score @s ff_active_uuid_0 = @e[type=minecraft:block_display,tag=ff_ice_freeze_syncing,sort=nearest,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:block_display,tag=ff_ice_freeze_syncing,sort=nearest,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:block_display,tag=ff_ice_freeze_syncing,sort=nearest,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:block_display,tag=ff_ice_freeze_syncing,sort=nearest,limit=1] ff_active_uuid_3 run tag @s add ff_ice_freeze_owner
execute as @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen] run attribute @s minecraft:jump_strength base set 0.42
execute as @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen] run attribute @s minecraft:entity_interaction_range base set 3
execute as @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen] run attribute @s minecraft:movement_speed base reset
execute as @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen] run attribute @s minecraft:friction_modifier base reset
scoreboard players set @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen] ff_heist_thaw_fx 60
effect clear @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen] minecraft:slowness
tag @a[tag=ff_ice_freeze_owner,tag=ff_ice_frozen] remove ff_ice_frozen
tag @a remove ff_ice_freeze_owner
kill @s
