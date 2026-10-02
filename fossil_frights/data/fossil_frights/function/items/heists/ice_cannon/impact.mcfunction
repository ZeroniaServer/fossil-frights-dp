tag @a remove ff_ice_cannon_hit_thief
tag @a remove ff_ice_cannon_shooter
execute if score lava ff_hazard_active matches 1 run function fossil_frights:items/heists/ice_cannon/lava_impact
execute as @a[team=ff_thief,gamemode=!spectator,distance=..2.5] run tag @s add ff_ice_cannon_hit_thief
function fossil_frights:entity/match/active
tag @a[limit=1,team=ff_guard,predicate=fossil_frights:entity/match/active] add ff_ice_cannon_shooter
execute as @a[tag=ff_ice_cannon_shooter] at @s if entity @a[tag=ff_ice_cannon_hit_thief,distance=25..] run function fossil_frights:advancements/heists/grant_ice_cannon_owner_freeze
execute positioned ~-0.5 ~-0.55 ~-0.5 run tag @e[type=player,dx=0,dy=0.1,dz=0,gamemode=!spectator,team=ff_thief] add ff_ice_cannon_impact_candidate
execute positioned ~ ~-1 ~ as @p[tag=ff_ice_cannon_impact_candidate] at @s run function fossil_frights:items/heists/ice_cannon/freeze_player
tag @a[tag=ff_ice_cannon_impact_candidate] remove ff_ice_cannon_impact_candidate
execute positioned ~-1 ~-0.55 ~-1 as @a[dx=1,dy=0.1,dz=1,gamemode=!spectator,team=ff_guard] at @s run function fossil_frights:util/player/extinguish
particle minecraft:snowflake ~ ~ ~ 0.45 0.45 0.45 0.03 55 force
particle minecraft:dust{color:[0.62f,0.9f,1.0f],scale:1.0f} ~ ~ ~ 0.42 0.32 0.42 0.01 20 force
particle minecraft:dust{color:[0.85f,0.96f,1.0f],scale:0.75f} ~ ~ ~ 0.35 0.25 0.35 0.01 14 force
playsound minecraft:block.glass.break player @a[distance=..24] ~ ~ ~ 0.9 0.55
kill @e[type=minecraft:block_display,tag=ff_ice_cannon_block,sort=nearest,limit=1,distance=..1.5]
tag @a remove ff_ice_cannon_hit_thief
tag @a remove ff_ice_cannon_shooter
kill @s
