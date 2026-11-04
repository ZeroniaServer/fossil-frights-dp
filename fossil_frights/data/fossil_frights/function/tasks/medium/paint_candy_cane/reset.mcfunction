function fossil_frights:tasks/medium/paint_candy_cane/cleanup
advancement revoke @a only fossil_frights:tasks/medium/paint_candy_cane/click
scoreboard players set $paint_candy_cane_sel ff_task_state 0
scoreboard players set $paint_candy_cane_done ff_task_state 0
execute as @e[type=minecraft:item_display,tag=ff_paint_candy_cane] run item modify entity @s contents {type:"minecraft:set_components",components:{"minecraft:item_model":"fossil_frights:display/frightmas/task/candycane_blank"}}
