execute as @e[type=minecraft:mannequin,tag=ff_evolution_4,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_4,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_3,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_3,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_2,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_2,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:mannequin,tag=ff_evolution_1,tag=!ff_evolution_locked,limit=1] at @e[type=minecraft:ocelot,tag=ff_evolution_1,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:interaction,tag=ff_evolution_hitbox,tag=ff_evolution_4,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_4,limit=1] run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=ff_evolution_hitbox,tag=ff_evolution_3,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_3,limit=1] run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=ff_evolution_hitbox,tag=ff_evolution_2,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_2,limit=1] run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=ff_evolution_hitbox,tag=ff_evolution_1,limit=1] at @e[type=minecraft:mannequin,tag=ff_evolution_1,limit=1] run tp @s ~ ~ ~
execute if score $evolution_flash_red ff_task_state matches 1.. run data modify storage fossil_frights:evolution glyphs set value ["\ue512","\ue512","\ue512","\ue512"]
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 1 run data modify storage fossil_frights:evolution glyphs set value ["\ue510","\ue510","\ue510","\ue510"]
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 2 run data modify storage fossil_frights:evolution glyphs set value ["\ue511","\ue510","\ue510","\ue510"]
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 3 run data modify storage fossil_frights:evolution glyphs set value ["\ue511","\ue511","\ue510","\ue510"]
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 4 run data modify storage fossil_frights:evolution glyphs set value ["\ue511","\ue511","\ue511","\ue510"]
execute unless score $evolution_flash_red ff_task_state matches 1.. if score $evolution_step ff_task_state matches 5.. run data modify storage fossil_frights:evolution glyphs set value ["\ue511","\ue511","\ue511","\ue511"]

scoreboard players set @a[predicate=fossil_frights:player/show_evolution_actionbar] ff_actionbar_manager.slot.evolution_task_info 1
scoreboard players display numberformat @a[predicate=fossil_frights:player/show_evolution_actionbar] ff_actionbar_manager.slot.evolution_task_info fixed ["",{storage:"fossil_frights:evolution",nbt:"glyphs[0]",interpret:true,font:"fossil-frights:actionbar/evolution"}," ",{storage:"fossil_frights:evolution",nbt:"glyphs[1]",interpret:true,font:"fossil-frights:actionbar/evolution"}," ",{storage:"fossil_frights:evolution",nbt:"glyphs[2]",interpret:true,font:"fossil-frights:actionbar/evolution"}," ",{storage:"fossil_frights:evolution",nbt:"glyphs[3]",interpret:true,font:"fossil-frights:actionbar/evolution"}]
execute if entity @a[limit=1,predicate=fossil_frights:player/show_evolution_actionbar] run schedule function fossil_frights:player/actionbar/manager 1t append

execute if score $evolution_flash_red ff_task_state matches 1.. run scoreboard players remove $evolution_flash_red ff_task_state 1
