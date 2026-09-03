scoreboard players add @s ff_ice_cannon_age 1
execute if score @s ff_ice_cannon_age matches 60.. run function fossil_frights:items/heists/ice_cannon/impact

scoreboard players operation #this_ice_cannon_projectile ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation #this_ice_cannon_projectile ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation #this_ice_cannon_projectile ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation #this_ice_cannon_projectile ff_active_uuid_3 = @s ff_active_uuid_3
execute if function fossil_frights:items/heists/ice_cannon/check_player_collision run function fossil_frights:items/heists/ice_cannon/impact
execute positioned ^ ^ ^0.9 if function fossil_frights:items/heists/ice_cannon/check_block_collision run function fossil_frights:items/heists/ice_cannon/impact

tp @s ^ ^ ^0.9
execute at @s run tp @e[type=minecraft:block_display,tag=ff_ice_cannon_block,sort=nearest,limit=1,distance=..1.5] ~ ~ ~
execute at @s as @e[type=minecraft:block_display,tag=ff_ice_cannon_block,sort=nearest,limit=1,distance=..1.5] at @s run tp @s ~ ~ ~ ~28 ~21
execute at @s run particle minecraft:snowflake ~ ~ ~ 0.04 0.04 0.04 0.01 1 force
