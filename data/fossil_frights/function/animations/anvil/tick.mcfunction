execute as @e[type=minecraft:armor_stand,tag=anvil,tag=!ff_anvil_busy] at @s if entity @e[type=minecraft:item,tag=!ff_anvil_input,tag=!ff_anvil_output,distance=..0.75,limit=1,sort=nearest] run function fossil_frights:animations/anvil/claim
execute as @e[type=minecraft:armor_stand,tag=anvil,tag=ff_anvil_busy] at @s run function fossil_frights:animations/anvil/process
