# Pick exactly one unique hard task from the remaining unselected pool.
scoreboard players set #task_remaining ff_task_state 0
execute unless score $star_gazing_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $glowberry_trees_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $hard_task_3_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $hard_task_4_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $hard_task_5_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $hard_task_6_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $hard_task_7_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $hard_task_8_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $hard_task_9_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $hard_task_10_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute if score #task_remaining ff_task_state matches ..0 run return 0

execute if score #task_remaining ff_task_state matches 1 store result score #task_pick ff_task_state run random value 1..1
execute if score #task_remaining ff_task_state matches 2 store result score #task_pick ff_task_state run random value 1..2
execute if score #task_remaining ff_task_state matches 3 store result score #task_pick ff_task_state run random value 1..3
execute if score #task_remaining ff_task_state matches 4 store result score #task_pick ff_task_state run random value 1..4
execute if score #task_remaining ff_task_state matches 5 store result score #task_pick ff_task_state run random value 1..5
execute if score #task_remaining ff_task_state matches 6 store result score #task_pick ff_task_state run random value 1..6
execute if score #task_remaining ff_task_state matches 7 store result score #task_pick ff_task_state run random value 1..7
execute if score #task_remaining ff_task_state matches 8 store result score #task_pick ff_task_state run random value 1..8
execute if score #task_remaining ff_task_state matches 9 store result score #task_pick ff_task_state run random value 1..9
execute if score #task_remaining ff_task_state matches 10 store result score #task_pick ff_task_state run random value 1..10

scoreboard players set #task_cursor ff_task_state 0
scoreboard players set #task_done ff_task_state 0

execute unless score $star_gazing_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $star_gazing_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/star_gazing/selected
execute unless score $star_gazing_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $glowberry_trees_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $glowberry_trees_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/glowberry_trees/selected
execute unless score $glowberry_trees_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $hard_task_3_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $hard_task_3_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/hard_task_3/selected
execute unless score $hard_task_3_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $hard_task_4_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $hard_task_4_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/hard_task_4/selected
execute unless score $hard_task_4_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $hard_task_5_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $hard_task_5_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/hard_task_5/selected
execute unless score $hard_task_5_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $hard_task_6_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $hard_task_6_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/hard_task_6/selected
execute unless score $hard_task_6_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $hard_task_7_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $hard_task_7_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/hard_task_7/selected
execute unless score $hard_task_7_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $hard_task_8_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $hard_task_8_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/hard_task_8/selected
execute unless score $hard_task_8_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $hard_task_9_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $hard_task_9_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/hard_task_9/selected
execute unless score $hard_task_9_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $hard_task_10_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $hard_task_10_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/hard_task_10/selected
execute unless score $hard_task_10_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
