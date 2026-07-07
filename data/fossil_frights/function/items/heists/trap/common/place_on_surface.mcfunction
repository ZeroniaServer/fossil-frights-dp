execute positioned ^ ^ ^-0.12 run summon minecraft:marker ~ ~ ~ {Tags:["ff_trap"],CustomName:"trap"}
execute if entity @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..0.35] run tag @s add ff_trap_placed
scoreboard players set @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..0.35] ff_glowtrap_age 0
scoreboard players set @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..0.35] ff_glowtrap_fx 0
scoreboard players operation @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..0.35] ff_trap_type = @s ff_trap_selected
execute as @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..0.35] at @s run function fossil_frights:items/heists/trap/placed
execute if entity @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..0.35] run playsound minecraft:block.amethyst_block.place player @a[team=ff_guard] ~ ~ ~ 0.8 1.4
