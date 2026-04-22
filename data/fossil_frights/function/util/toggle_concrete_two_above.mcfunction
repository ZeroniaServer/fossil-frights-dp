scoreboard players set $toggle_concrete_two_above ff_task_state 0
execute if block ~ ~2 ~ minecraft:pink_concrete_powder run scoreboard players set $toggle_concrete_two_above ff_task_state 1
execute if block ~ ~2 ~ minecraft:light_blue_concrete_powder run scoreboard players set $toggle_concrete_two_above ff_task_state 2
execute if score $toggle_concrete_two_above ff_task_state matches 1 run function fossil_frights:util/toggle_concrete_two_above_to_blue
execute if score $toggle_concrete_two_above ff_task_state matches 2 run function fossil_frights:util/toggle_concrete_two_above_to_pink
