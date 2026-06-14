summon minecraft:marker ~ ~ ~ {Tags:["ff_glowtrap"],CustomName:"trap"}
execute if entity @e[type=minecraft:marker,tag=ff_glowtrap,sort=nearest,limit=1,distance=..0.35] run tag @s add ff_glowtrap_placed
scoreboard players set @e[type=minecraft:marker,tag=ff_glowtrap,sort=nearest,limit=1,distance=..0.35] ff_glowtrap_age 0
scoreboard players set @e[type=minecraft:marker,tag=ff_glowtrap,sort=nearest,limit=1,distance=..0.35] ff_glowtrap_fx 0
execute if entity @e[type=minecraft:marker,tag=ff_glowtrap,sort=nearest,limit=1,distance=..0.35] run particle minecraft:soul_fire_flame ~ ~ ~ 0.25 0.1 0.25 0 10 force @a[tag=ff_glowtrap_viewer]
execute if entity @e[type=minecraft:marker,tag=ff_glowtrap,sort=nearest,limit=1,distance=..0.35] run playsound minecraft:block.amethyst_block.place player @a[tag=ff_heist_guard] ~ ~ ~ 0.8 1.4
