scoreboard players set #reindeer_counting_mismatch ff_task_state 0
scoreboard players set #reindeer_counting_board_total ff_task_state 0
execute store result score $reindeer_counting_board_1 ff_task_state run random value 0..1
scoreboard players operation #reindeer_counting_board_total ff_task_state += $reindeer_counting_board_1 ff_task_state
execute unless score $reindeer_counting_board_1 ff_task_state = $reindeer_counting_sky_1 ff_task_state run scoreboard players add #reindeer_counting_mismatch ff_task_state 1
execute store result score $reindeer_counting_board_2 ff_task_state run random value 0..1
scoreboard players operation #reindeer_counting_board_total ff_task_state += $reindeer_counting_board_2 ff_task_state
execute unless score $reindeer_counting_board_2 ff_task_state = $reindeer_counting_sky_2 ff_task_state run scoreboard players add #reindeer_counting_mismatch ff_task_state 1
execute store result score $reindeer_counting_board_3 ff_task_state run random value 0..1
scoreboard players operation #reindeer_counting_board_total ff_task_state += $reindeer_counting_board_3 ff_task_state
execute unless score $reindeer_counting_board_3 ff_task_state = $reindeer_counting_sky_3 ff_task_state run scoreboard players add #reindeer_counting_mismatch ff_task_state 1
execute store result score $reindeer_counting_board_4 ff_task_state run random value 0..1
scoreboard players operation #reindeer_counting_board_total ff_task_state += $reindeer_counting_board_4 ff_task_state
execute unless score $reindeer_counting_board_4 ff_task_state = $reindeer_counting_sky_4 ff_task_state run scoreboard players add #reindeer_counting_mismatch ff_task_state 1
execute store result score $reindeer_counting_board_5 ff_task_state run random value 0..1
scoreboard players operation #reindeer_counting_board_total ff_task_state += $reindeer_counting_board_5 ff_task_state
execute unless score $reindeer_counting_board_5 ff_task_state = $reindeer_counting_sky_5 ff_task_state run scoreboard players add #reindeer_counting_mismatch ff_task_state 1
execute store result score $reindeer_counting_board_6 ff_task_state run random value 0..1
scoreboard players operation #reindeer_counting_board_total ff_task_state += $reindeer_counting_board_6 ff_task_state
execute unless score $reindeer_counting_board_6 ff_task_state = $reindeer_counting_sky_6 ff_task_state run scoreboard players add #reindeer_counting_mismatch ff_task_state 1
execute store result score $reindeer_counting_board_7 ff_task_state run random value 0..1
scoreboard players operation #reindeer_counting_board_total ff_task_state += $reindeer_counting_board_7 ff_task_state
execute unless score $reindeer_counting_board_7 ff_task_state = $reindeer_counting_sky_7 ff_task_state run scoreboard players add #reindeer_counting_mismatch ff_task_state 1
execute if score #reindeer_counting_board_total ff_task_state matches 0 run return run function fossil_frights:tasks/hard/reindeer_counting/randomize_board
execute if score #reindeer_counting_board_total ff_task_state matches 7 run return run function fossil_frights:tasks/hard/reindeer_counting/randomize_board
execute if score #reindeer_counting_mismatch ff_task_state matches 0 run return run function fossil_frights:tasks/hard/reindeer_counting/randomize_board
