execute as @e[type=minecraft:mannequin,tag=ff_evolution_4,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_4,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_3,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_3,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_2,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_2,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_1,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_1,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute if score $evolution_flash_red ff_task_state matches 1.. run function fossil_frights:tasks/hard/evolution/display_macro {c1:"red",c2:"red",c3:"red",c4:"red"}
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 1 run function fossil_frights:tasks/hard/evolution/display_macro {c1:"white",c2:"white",c3:"white",c4:"white"}
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 2 run function fossil_frights:tasks/hard/evolution/display_macro {c1:"green",c2:"white",c3:"white",c4:"white"}
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 3 run function fossil_frights:tasks/hard/evolution/display_macro {c1:"green",c2:"green",c3:"white",c4:"white"}
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 4 run function fossil_frights:tasks/hard/evolution/display_macro {c1:"green",c2:"green",c3:"green",c4:"white"}
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 5.. run function fossil_frights:tasks/hard/evolution/display_macro {c1:"green",c2:"green",c3:"green",c4:"green"}
execute if score $evolution_flash_red ff_task_state matches 1.. run scoreboard players remove $evolution_flash_red ff_task_state 1
