# Pick exactly one unique hard task from the remaining unselected pool.
scoreboard players set #task_remaining ff_task_state 0
execute unless score $star_gazing_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $glowberry_trees_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $return_the_key_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $skincare_routine_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $feed_the_bats_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $a_c_reset_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $deforst_freezer_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $the_lost_code_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $pig_wrangler_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $holy_grail_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $hoveraptor_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $fertilize_plant_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $basketball_dance_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute if score #task_remaining ff_task_state matches ..0 run return 0

execute if score #task_remaining ff_task_state matches 1 store result score #task_pick ff_task_state run scoreboard players get #task_remaining ff_task_state
execute if score #task_remaining ff_task_state matches 2 store result score #task_pick ff_task_state run random value 1..2
execute if score #task_remaining ff_task_state matches 3 store result score #task_pick ff_task_state run random value 1..3
execute if score #task_remaining ff_task_state matches 4 store result score #task_pick ff_task_state run random value 1..4
execute if score #task_remaining ff_task_state matches 5 store result score #task_pick ff_task_state run random value 1..5
execute if score #task_remaining ff_task_state matches 6 store result score #task_pick ff_task_state run random value 1..6
execute if score #task_remaining ff_task_state matches 7 store result score #task_pick ff_task_state run random value 1..7
execute if score #task_remaining ff_task_state matches 8 store result score #task_pick ff_task_state run random value 1..8
execute if score #task_remaining ff_task_state matches 9 store result score #task_pick ff_task_state run random value 1..9
execute if score #task_remaining ff_task_state matches 10 store result score #task_pick ff_task_state run random value 1..10
execute if score #task_remaining ff_task_state matches 11 store result score #task_pick ff_task_state run random value 1..11
execute if score #task_remaining ff_task_state matches 12 store result score #task_pick ff_task_state run random value 1..12
execute if score #task_remaining ff_task_state matches 13 store result score #task_pick ff_task_state run random value 1..13

scoreboard players set #task_cursor ff_task_state 0
scoreboard players set #task_done ff_task_state 0

execute unless score $star_gazing_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $star_gazing_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/star_gazing/selected
execute unless score $star_gazing_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $glowberry_trees_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $glowberry_trees_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/glowberry_trees/selected
execute unless score $glowberry_trees_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $return_the_key_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $return_the_key_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/return_the_key/selected
execute unless score $return_the_key_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $skincare_routine_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $skincare_routine_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/skincare_routine/selected
execute unless score $skincare_routine_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $feed_the_bats_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $feed_the_bats_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/feed_the_bats/selected
execute unless score $feed_the_bats_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $a_c_reset_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $a_c_reset_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/a_c_reset/selected
execute unless score $a_c_reset_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $deforst_freezer_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $deforst_freezer_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/deforst_freezer/selected
execute unless score $deforst_freezer_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $the_lost_code_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $the_lost_code_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/the_lost_code/selected
execute unless score $the_lost_code_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $pig_wrangler_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $pig_wrangler_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/pig_wrangler/selected
execute unless score $pig_wrangler_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $holy_grail_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $holy_grail_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/holy_grail/selected
execute unless score $holy_grail_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $hoveraptor_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $hoveraptor_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/hoveraptor/selected
execute unless score $hoveraptor_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $fertilize_plant_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $fertilize_plant_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/fertilize_plant/selected
execute unless score $fertilize_plant_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
execute unless score $basketball_dance_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $basketball_dance_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/hard/basketball_dance/selected
execute unless score $basketball_dance_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
