function fossil_frights:tasks/medium/cocoa_run/cleanup
advancement revoke @a only fossil_frights:tasks/medium/cocoa_run/click
scoreboard players set $cocoa_run_sel ff_task_state 0
scoreboard players set $cocoa_run_done ff_task_state 0
execute as @e[type=#fossil_frights:display_entities,tag=ff_cocoa_run] run data modify entity @s view_range set value 1
kill @e[type=minecraft:mannequin,tag=animation_boss]
kill @e[type=minecraft:armor_stand,tag=animation_boss_chair]
