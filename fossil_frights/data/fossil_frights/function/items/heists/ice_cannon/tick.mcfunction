scoreboard players add @s ff_ice_cannon_age 1
execute if score @s ff_ice_cannon_age matches 60.. run function fossil_frights:items/heists/ice_cannon/impact

function fossil_frights:entity/match/active
execute positioned ~-0.5 ~-0.55 ~-0.5 if entity @a[limit=1,dx=0,dy=0.1,dz=0,gamemode=!spectator,predicate=!fossil_frights:entity/match/active] positioned ~0.5 ~0.55 ~0.5 run function fossil_frights:items/heists/ice_cannon/impact
execute positioned ^ ^ ^0.9 if function fossil_frights:items/heists/ice_cannon/check_block_collision run function fossil_frights:items/heists/ice_cannon/impact

tp @s ^ ^ ^0.9
execute at @s run tp @e[type=minecraft:block_display,tag=ff_ice_cannon_block,sort=nearest,limit=1,distance=..1.5] ~ ~ ~
execute at @s as @e[type=minecraft:block_display,tag=ff_ice_cannon_block,sort=nearest,limit=1,distance=..1.5] at @s run tp @s ~ ~ ~ ~28 ~21
execute at @s run particle minecraft:snowflake ~ ~ ~ 0.04 0.04 0.04 0.01 1 force
