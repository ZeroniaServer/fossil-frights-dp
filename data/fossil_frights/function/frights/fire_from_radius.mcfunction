execute unless entity @e[type=minecraft:armor_stand,tag=ff_fright_target,limit=1] run return 0
advancement grant @s only fossil_frights:02_achievements/frightful
scoreboard players set @s ff_fright_timer 0
execute as @e[type=minecraft:armor_stand,tag=ff_fright_target,limit=1] run function fossil_frights:frights/dispatch
