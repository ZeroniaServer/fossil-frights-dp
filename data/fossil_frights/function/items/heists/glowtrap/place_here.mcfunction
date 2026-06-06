tag @s add ff_glowtrap_placed
summon minecraft:marker ~ ~ ~ {Tags:["ff_glowtrap"],CustomName:'{"text":"trap"}'}
scoreboard players set @e[type=minecraft:marker,tag=ff_glowtrap,sort=nearest,limit=1] ff_glowtrap_age 0
particle minecraft:sculk_soul ~ ~ ~ 0.4 0.15 0.4 0.02 8 force @a[tag=ff_heist_guard]
particle minecraft:soul_fire_flame ~ ~ ~ 0.25 0.1 0.25 0.01 8 force @a[tag=ff_heist_guard]
playsound minecraft:block.amethyst_block.place player @a[tag=ff_heist_guard] ~ ~ ~ 0.8 1.4
