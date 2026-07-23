execute if score lava ff_hazard_active matches 1 run damage @s 1 minecraft:freeze
execute if score lava ff_hazard_active matches 1 run return 0
execute if entity @s[tag=ff_ice_frozen] run return 0
kill @e[type=minecraft:block_display,tag=ff_ice_freeze,distance=..1.75]
effect give @s minecraft:slowness 5 9 true
tag @s add ff_ice_frozen
function fossil_frights:items/heists/ice_cannon/overlay_show
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:entity_interaction_range base set 0
attribute @s minecraft:movement_speed base set 0.055
attribute @s minecraft:friction_modifier base set 0
scoreboard players set @s ff_heist_thaw_fx 0
summon minecraft:block_display ~ ~1.0 ~ {Tags:["ff_ice_freeze","ff_ice_freeze_new","ff_trap_freeze_block"],block_state:{Name:"minecraft:frosted_ice",Properties:{age:"0"}},teleport_duration:1,start_interpolation:0,interpolation_duration:2,transformation:{translation:[-1f,-1f,-1f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:block_display,tag=ff_ice_freeze_new,sort=nearest,limit=1,distance=..2] ff_ice_freeze_age 0
data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score @e[type=minecraft:block_display,tag=ff_ice_freeze_new,sort=nearest,limit=1,distance=..2] ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score @e[type=minecraft:block_display,tag=ff_ice_freeze_new,sort=nearest,limit=1,distance=..2] ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score @e[type=minecraft:block_display,tag=ff_ice_freeze_new,sort=nearest,limit=1,distance=..2] ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score @e[type=minecraft:block_display,tag=ff_ice_freeze_new,sort=nearest,limit=1,distance=..2] ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
tag @e[type=minecraft:block_display,tag=ff_ice_freeze_new,sort=nearest,limit=1,distance=..2] remove ff_ice_freeze_new
particle minecraft:snowflake ~ ~1.0 ~ 0.55 0.75 0.55 0.03 45 force
playsound minecraft:block.glass.place player @a[distance=..20] ~ ~ ~ 0.8 1.4
playsound minecraft:entity.player.hurt_freeze player @s ~ ~ ~ 1 1
