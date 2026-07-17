setblock -12 76 63 minecraft:mangrove_roots[waterlogged=true]
setblock -10 76 61 minecraft:mangrove_roots[waterlogged=true]
setblock -10 74 64 minecraft:mangrove_roots[waterlogged=true]
scoreboard players set #return_the_key_roots ff_task_state 0
execute store result score #return_the_key_roll ff_task_state run random value 1..90
execute if score #return_the_key_roll ff_task_state matches 31..40 run scoreboard players set #return_the_key_roots ff_task_state 1
execute if score #return_the_key_roll ff_task_state matches 41..50 run scoreboard players set #return_the_key_roots ff_task_state 2
execute if score #return_the_key_roll ff_task_state matches 51..60 run scoreboard players set #return_the_key_roots ff_task_state 3
execute if score #return_the_key_roll ff_task_state matches 61..70 run scoreboard players set #return_the_key_roots ff_task_state 4
execute if score #return_the_key_roll ff_task_state matches 71..80 run scoreboard players set #return_the_key_roots ff_task_state 5
execute if score #return_the_key_roll ff_task_state matches 81..90 run scoreboard players set #return_the_key_roots ff_task_state 6
execute if score #return_the_key_roots ff_task_state matches 1 run function fossil_frights:tasks/hard/return_the_key/root_mode/remove_1
execute if score #return_the_key_roots ff_task_state matches 2 run function fossil_frights:tasks/hard/return_the_key/root_mode/remove_2
execute if score #return_the_key_roots ff_task_state matches 3 run function fossil_frights:tasks/hard/return_the_key/root_mode/remove_3
execute if score #return_the_key_roots ff_task_state matches 4 run function fossil_frights:tasks/hard/return_the_key/root_mode/remove_12
execute if score #return_the_key_roots ff_task_state matches 5 run function fossil_frights:tasks/hard/return_the_key/root_mode/remove_13
execute if score #return_the_key_roots ff_task_state matches 6 run function fossil_frights:tasks/hard/return_the_key/root_mode/remove_23
