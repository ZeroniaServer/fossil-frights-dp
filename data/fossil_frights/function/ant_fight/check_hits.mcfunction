execute unless entity @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] run return 0
execute if score @s ff_active_uuid_0 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_0 if score @s ff_active_uuid_1 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_1 if score @s ff_active_uuid_2 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_2 if score @s ff_active_uuid_3 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_3 run return 0
execute if score @s ff_ant_immunity matches 1.. run return 0
scoreboard players set $ant_hit_valid ff_ant_fight 0
execute store success score $ant_hit_valid ff_ant_fight as @a[tag=ff_ant_fight] if score @s ff_active_uuid_0 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_0 if score @s ff_active_uuid_1 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_1 if score @s ff_active_uuid_2 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_2 if score @s ff_active_uuid_3 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_3 run scoreboard players add @s ff_ant_score 1
execute unless score $ant_hit_valid ff_ant_fight matches 1.. run return 0
particle minecraft:tinted_leaves{color:[0.55,0.8,0.35,1.0]} ~ ~1 ~ 0.35 0.45 0.35 0.5 50
playsound minecraft:entity.player.hurt player @s ~ ~ ~ 1 1
execute as @a[tag=ff_ant_fight] if score @s ff_active_uuid_0 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_0 if score @s ff_active_uuid_1 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_1 if score @s ff_active_uuid_2 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_2 if score @s ff_active_uuid_3 = @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest] ff_ant_proj_3 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.9 1.6
execute if score @s ff_ant_score matches 1.. run scoreboard players remove @s ff_ant_score 1
kill @e[type=minecraft:snowball,tag=ff_ant_marked,distance=..1.5,limit=1,sort=nearest]
function fossil_frights:ant_fight/exit_restore
title @s actionbar {"text":"-1 Ant Score","color":"red"}
