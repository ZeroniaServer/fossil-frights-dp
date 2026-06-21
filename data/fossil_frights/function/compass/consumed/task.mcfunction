advancement revoke @s only fossil_frights:task_compass_consumed
execute unless score $heist_mode_active ff_game_state matches 1 run scoreboard players add @s ff_compass_mode 1
execute unless score $heist_mode_active ff_game_state matches 1 run scoreboard players set @s ff_compass 1
execute unless score $heist_mode_active ff_game_state matches 1 run function fossil_frights:compass/markers/sync_tasks
execute unless score $heist_mode_active ff_game_state matches 1 run function fossil_frights:compass/update/task
