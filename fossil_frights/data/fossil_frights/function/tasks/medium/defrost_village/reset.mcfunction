function fossil_frights:tasks/medium/defrost_village/cleanup
advancement revoke @a only fossil_frights:tasks/medium/defrost_village/click
scoreboard players set $defrost_village_sel ff_task_state 0
scoreboard players set $defrost_village_done ff_task_state 0
execute as @e[type=minecraft:item_display,tag=ff_defrost_village] run item modify entity @s contents {type:"minecraft:set_components",components:{"minecraft:item_model":"fossil_frights:display/frightmas/village/village"}}
