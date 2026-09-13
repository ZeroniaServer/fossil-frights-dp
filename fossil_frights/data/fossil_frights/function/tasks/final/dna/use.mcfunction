execute unless items entity @s weapon.* *[custom_data~{ff_dna:true}] run return 0
execute unless entity @e[type=minecraft:item_display,tag=ff_dna_hover,sort=nearest,limit=1,distance=..8] run return 0
tag @s add ff_dna_user
execute as @e[type=minecraft:item_display,tag=ff_dna_hover,sort=nearest,limit=1,distance=..8] at @s run function fossil_frights:tasks/final/dna/give_reward
tag @s remove ff_dna_user
