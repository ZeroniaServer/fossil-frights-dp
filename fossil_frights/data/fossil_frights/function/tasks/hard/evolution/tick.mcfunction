execute as @e[type=minecraft:mannequin,tag=ff_evolution_4,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_4,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_3,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_3,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_2,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_2,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_1,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_1,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:interaction,tag=ff_evolution_hitbox,tag=ff_evolution_4,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_4,limit=1] run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=ff_evolution_hitbox,tag=ff_evolution_3,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_3,limit=1] run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=ff_evolution_hitbox,tag=ff_evolution_2,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_2,limit=1] run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=ff_evolution_hitbox,tag=ff_evolution_1,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_1,limit=1] run tp @s ~ ~ ~
execute if score $evolution_flash_red ff_task_state matches 1.. run function fossil_frights:tasks/hard/evolution/display_macro {c1:"\ue512",c2:"\ue512",c3:"\ue512",c4:"\ue512"}
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 1 run function fossil_frights:tasks/hard/evolution/display_macro {c1:"\ue510",c2:"\ue510",c3:"\ue510",c4:"\ue510"}
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 2 run function fossil_frights:tasks/hard/evolution/display_macro {c1:"\ue511",c2:"\ue510",c3:"\ue510",c4:"\ue510"}
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 3 run function fossil_frights:tasks/hard/evolution/display_macro {c1:"\ue511",c2:"\ue511",c3:"\ue510",c4:"\ue510"}
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 4 run function fossil_frights:tasks/hard/evolution/display_macro {c1:"\ue511",c2:"\ue511",c3:"\ue511",c4:"\ue510"}
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 5.. run function fossil_frights:tasks/hard/evolution/display_macro {c1:"\ue511",c2:"\ue511",c3:"\ue511",c4:"\ue511"}
execute if score $evolution_flash_red ff_task_state matches 1.. run scoreboard players remove $evolution_flash_red ff_task_state 1
