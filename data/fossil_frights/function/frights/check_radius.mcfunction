tag @e[type=minecraft:armor_stand,tag=ff_fright_target] remove ff_fright_target
execute as @e[type=minecraft:armor_stand,tag=ff_fright,distance=..4,sort=nearest,limit=1] run tag @s add ff_fright_target
execute if entity @e[type=minecraft:armor_stand,tag=ff_fright_target,limit=1] run scoreboard players add @s ff_fright_timer 1
execute unless entity @e[type=minecraft:armor_stand,tag=ff_fright_target,limit=1] run scoreboard players set @s ff_fright_timer 0
execute if score @s ff_fright_timer matches 30.. run function fossil_frights:frights/fire_from_radius
