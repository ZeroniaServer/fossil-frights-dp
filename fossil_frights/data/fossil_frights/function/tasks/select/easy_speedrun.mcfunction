# Speedrun mode restricts easy-task rolls to a fixed fast pool.
scoreboard players set #task_remaining ff_task_state 0
execute unless score $check_security_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $check_ankylo_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $toilet_clog_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $polish_bell_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $lock_register_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute unless score $reset_salt_level_sel ff_task_state matches 1 run scoreboard players add #task_remaining ff_task_state 1
execute if score #task_remaining ff_task_state matches ..0 run return 0

execute if score #task_remaining ff_task_state matches 1 store result score #task_pick ff_task_state run scoreboard players get #task_remaining ff_task_state
execute if score #task_remaining ff_task_state matches 2 store result score #task_pick ff_task_state run random value 1..2
execute if score #task_remaining ff_task_state matches 3 store result score #task_pick ff_task_state run random value 1..3
execute if score #task_remaining ff_task_state matches 4 store result score #task_pick ff_task_state run random value 1..4
execute if score #task_remaining ff_task_state matches 5 store result score #task_pick ff_task_state run random value 1..5
execute if score #task_remaining ff_task_state matches 6 store result score #task_pick ff_task_state run random value 1..6

scoreboard players set #task_cursor ff_task_state 0
scoreboard players set #task_done ff_task_state 0

execute unless score $check_security_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $check_security_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/check_security/selected
execute unless score $check_security_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1

execute unless score $check_ankylo_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $check_ankylo_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/check_ankylo/selected
execute unless score $check_ankylo_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1

execute unless score $toilet_clog_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $toilet_clog_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/toilet_clog/selected
execute unless score $toilet_clog_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1

execute unless score $polish_bell_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $polish_bell_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/polish_bell/selected
execute unless score $polish_bell_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1

execute unless score $lock_register_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $lock_register_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/lock_register/selected
execute unless score $lock_register_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1

execute unless score $reset_salt_level_sel ff_task_state matches 1 run scoreboard players add #task_cursor ff_task_state 1
execute unless score $reset_salt_level_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run function fossil_frights:tasks/easy/reset_salt_level/selected
execute unless score $reset_salt_level_sel ff_task_state matches 1 if score #task_done ff_task_state matches 0 if score #task_cursor ff_task_state = #task_pick ff_task_state run scoreboard players set #task_done ff_task_state 1
