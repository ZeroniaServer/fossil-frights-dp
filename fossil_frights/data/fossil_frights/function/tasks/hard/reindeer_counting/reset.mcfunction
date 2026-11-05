function fossil_frights:tasks/hard/reindeer_counting/cleanup
execute as @e[type=minecraft:item_display,tag=ff_reindeer_1] run data modify entity @s view_range set value 0
scoreboard players set $reindeer_counting_sky_1 ff_task_state 0
scoreboard players set $reindeer_counting_board_1 ff_task_state 0
advancement revoke @a only fossil_frights:tasks/hard/reindeer_counting/click_1
execute as @e[type=minecraft:item_display,tag=ff_reindeer_2] run data modify entity @s view_range set value 0
scoreboard players set $reindeer_counting_sky_2 ff_task_state 0
scoreboard players set $reindeer_counting_board_2 ff_task_state 0
advancement revoke @a only fossil_frights:tasks/hard/reindeer_counting/click_2
execute as @e[type=minecraft:item_display,tag=ff_reindeer_3] run data modify entity @s view_range set value 0
scoreboard players set $reindeer_counting_sky_3 ff_task_state 0
scoreboard players set $reindeer_counting_board_3 ff_task_state 0
advancement revoke @a only fossil_frights:tasks/hard/reindeer_counting/click_3
execute as @e[type=minecraft:item_display,tag=ff_reindeer_4] run data modify entity @s view_range set value 0
scoreboard players set $reindeer_counting_sky_4 ff_task_state 0
scoreboard players set $reindeer_counting_board_4 ff_task_state 0
advancement revoke @a only fossil_frights:tasks/hard/reindeer_counting/click_4
execute as @e[type=minecraft:item_display,tag=ff_reindeer_5] run data modify entity @s view_range set value 0
scoreboard players set $reindeer_counting_sky_5 ff_task_state 0
scoreboard players set $reindeer_counting_board_5 ff_task_state 0
advancement revoke @a only fossil_frights:tasks/hard/reindeer_counting/click_5
execute as @e[type=minecraft:item_display,tag=ff_reindeer_6] run data modify entity @s view_range set value 0
scoreboard players set $reindeer_counting_sky_6 ff_task_state 0
scoreboard players set $reindeer_counting_board_6 ff_task_state 0
advancement revoke @a only fossil_frights:tasks/hard/reindeer_counting/click_6
execute as @e[type=minecraft:item_display,tag=ff_reindeer_7] run data modify entity @s view_range set value 0
scoreboard players set $reindeer_counting_sky_7 ff_task_state 0
scoreboard players set $reindeer_counting_board_7 ff_task_state 0
advancement revoke @a only fossil_frights:tasks/hard/reindeer_counting/click_7
