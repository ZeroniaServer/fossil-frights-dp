execute anchored eyes positioned ^ ^0.75 ^0.8 run summon minecraft:marker ~ ~ ~ {Tags:["ff_ice_cannon","ff_ice_cannon_new"]}
execute rotated as @s run rotate @e[type=minecraft:marker,tag=ff_ice_cannon_new,sort=nearest,limit=1] ~ ~
scoreboard players set @e[type=minecraft:marker,tag=ff_ice_cannon_new,sort=nearest,limit=1] ff_ice_cannon_age 0
data modify storage fossil_frights:uuid this set from entity @s UUID
execute store result score @e[type=minecraft:marker,tag=ff_ice_cannon_new,sort=nearest,limit=1] ff_active_uuid_0 run data get storage fossil_frights:uuid this[0]
execute store result score @e[type=minecraft:marker,tag=ff_ice_cannon_new,sort=nearest,limit=1] ff_active_uuid_1 run data get storage fossil_frights:uuid this[1]
execute store result score @e[type=minecraft:marker,tag=ff_ice_cannon_new,sort=nearest,limit=1] ff_active_uuid_2 run data get storage fossil_frights:uuid this[2]
execute store result score @e[type=minecraft:marker,tag=ff_ice_cannon_new,sort=nearest,limit=1] ff_active_uuid_3 run data get storage fossil_frights:uuid this[3]
data remove storage fossil_frights:uuid this
execute anchored eyes positioned ^ ^0.75 ^0.8 run summon minecraft:block_display ~ ~ ~ {Tags:["ff_ice_cannon_block","ff_ice_cannon_block_new"],block_state:{Name:"minecraft:ice"},brightness:{sky:15,block:15},teleport_duration:1,start_interpolation:0,interpolation_duration:1,transformation:{translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
execute anchored eyes positioned ^ ^0.75 ^0.15 run particle minecraft:poof ~ ~ ~ 0.08 0.08 0.08 0.03 10 force
execute anchored eyes positioned ^ ^0.75 ^0.2 run particle minecraft:snowflake ~ ~ ~ 0.06 0.06 0.06 0.02 8 force
execute anchored eyes positioned ^ ^0.75 ^0.2 run particle minecraft:dust{color:[0.72f,0.92f,1.0f],scale:0.8f} ~ ~ ~ 0.08 0.08 0.08 0.01 6 force
playsound minecraft:block.glass.place player @a[distance=..24] ~ ~ ~ 0.8 0.6
tag @e[type=minecraft:marker,tag=ff_ice_cannon_new,sort=nearest,limit=1] remove ff_ice_cannon_new
tag @e[type=minecraft:block_display,tag=ff_ice_cannon_block_new,sort=nearest,limit=1] remove ff_ice_cannon_block_new
