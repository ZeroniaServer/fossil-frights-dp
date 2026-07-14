tag @a remove ff_ice_cannon_hit_thief
tag @a remove ff_ice_cannon_shooter
tag @s add ff_ice_cannon_impact_source
execute as @a[team=ff_thief,gamemode=!spectator,distance=..2.5] run tag @s add ff_ice_cannon_hit_thief
execute as @a[team=ff_guard] if score @s ff_active_uuid_0 = @e[type=minecraft:marker,tag=ff_ice_cannon_impact_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:marker,tag=ff_ice_cannon_impact_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:marker,tag=ff_ice_cannon_impact_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:marker,tag=ff_ice_cannon_impact_source,limit=1] ff_active_uuid_3 run tag @s add ff_ice_cannon_shooter
execute as @a[tag=ff_ice_cannon_shooter] at @s if entity @a[tag=ff_ice_cannon_hit_thief,distance=25..] run function fossil_frights:advancements/heists/grant_ice_cannon_owner_freeze
execute as @a[team=ff_thief,gamemode=!spectator,distance=..2.5] at @s run function fossil_frights:items/heists/ice_cannon/freeze_player
particle minecraft:snowflake ~ ~ ~ 0.45 0.45 0.45 0.03 55 force
particle minecraft:dust{color:[0.62f,0.9f,1.0f],scale:1.0f} ~ ~ ~ 0.42 0.32 0.42 0.01 28 force
particle minecraft:dust{color:[0.85f,0.96f,1.0f],scale:0.75f} ~ ~ ~ 0.35 0.25 0.35 0.01 20 force
particle minecraft:poof ~ ~ ~ 0.28 0.22 0.28 0.04 16 force
playsound minecraft:block.glass.break player @a[distance=..24] ~ ~ ~ 0.9 0.55
kill @e[type=minecraft:block_display,tag=ff_ice_cannon_block,sort=nearest,limit=1,distance=..1.5]
tag @a remove ff_ice_cannon_hit_thief
tag @a remove ff_ice_cannon_shooter
tag @e[type=minecraft:marker,tag=ff_ice_cannon_impact_source] remove ff_ice_cannon_impact_source
kill @s
