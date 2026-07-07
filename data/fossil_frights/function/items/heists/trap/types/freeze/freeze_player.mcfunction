execute if score lava ff_hazard_active matches 1 run damage @s 1 minecraft:freeze
execute if score lava ff_hazard_active matches 1 run return 0
execute if entity @s[tag=ff_ice_frozen] as @e[type=minecraft:block_display,tag=ff_ice_freeze,distance=..2.5,sort=nearest,limit=1] at @s run return run function fossil_frights:items/heists/ice_cannon/freeze_end
kill @e[type=minecraft:block_display,tag=ff_ice_freeze,distance=..1.75]
effect give @s minecraft:slowness 5 9 true
tag @s add ff_ice_frozen
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:entity_interaction_range base set 0
scoreboard players set @s ff_heist_thaw_fx 0
summon minecraft:block_display ~ ~1.0 ~ {Tags:["ff_ice_freeze","ff_ice_freeze_new","ff_trap_freeze_block"],block_state:{Name:"minecraft:ice"},brightness:{sky:15,block:15},teleport_duration:1,start_interpolation:0,interpolation_duration:2,transformation:{translation:[-1f,-1f,-1f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[type=minecraft:block_display,tag=ff_ice_freeze_new,sort=nearest,limit=1,distance=..2] ff_ice_freeze_age 0
tag @e[type=minecraft:block_display,tag=ff_ice_freeze_new,sort=nearest,limit=1,distance=..2] remove ff_ice_freeze_new
particle minecraft:snowflake ~ ~1.0 ~ 0.55 0.75 0.55 0.03 45 force
playsound minecraft:block.glass.place player @a[distance=..20] ~ ~ ~ 0.8 1.4
