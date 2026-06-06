scoreboard players add @s ff_glowtrap_age 1
scoreboard players add @s ff_glowtrap_fx 1
execute if score @s ff_glowtrap_age matches ..39 run particle minecraft:soul_fire_flame ~ ~ ~ 0.28 0.12 0.28 0.01 2 force @a[tag=ff_heist_guard]
execute if score @s ff_glowtrap_age matches ..39 run return 0
execute if score @s ff_glowtrap_age matches 40 run function fossil_frights:items/heists/glowtrap/activate
execute if score @s ff_glowtrap_fx matches 5.. run scoreboard players set @s ff_glowtrap_fx 0
execute if score @s ff_glowtrap_fx matches 0 run particle minecraft:sculk_soul ~ ~ ~ 0.4 0.15 0.4 0.02 1 force @a[tag=ff_heist_guard]
execute positioned ~-1.5 ~-1.5 ~-1.5 unless entity @a[tag=ff_heist_thief,gamemode=!spectator,dx=3,dy=3,dz=3] run return 0
function fossil_frights:items/heists/glowtrap/trigger
