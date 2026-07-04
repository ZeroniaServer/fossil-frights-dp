scoreboard players add @s ff_ice_cannon_age 1
execute if score @s ff_ice_cannon_age matches 60.. run function fossil_frights:items/heists/ice_cannon/impact
execute positioned ^ ^ ^0.9 unless block ~ ~ ~ #fossil_frights:raycast_ignore run function fossil_frights:items/heists/ice_cannon/impact
tag @s add ff_ice_cannon_collision_check
function fossil_frights:items/heists/ice_cannon/check_player_collision
tag @s remove ff_ice_cannon_collision_check
tp @s ^ ^ ^0.9
execute at @s run tp @e[type=minecraft:block_display,tag=ff_ice_cannon_block,sort=nearest,limit=1,distance=..1.5] ~ ~ ~
execute at @s as @e[type=minecraft:block_display,tag=ff_ice_cannon_block,sort=nearest,limit=1,distance=..1.5] at @s run tp @s ~ ~ ~ ~28 ~21
execute at @s run particle minecraft:snowflake ~ ~ ~ 0.04 0.04 0.04 0.01 1 force
