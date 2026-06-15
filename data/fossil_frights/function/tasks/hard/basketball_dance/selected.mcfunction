execute if score $basketball_dance_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $basketball_dance_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/basketball_dance
scoreboard players set $basketball_dance_sel ff_task_state 1
scoreboard players set $basketball_dance_done ff_task_state 0
scoreboard players set $basketball_dance_timer ff_task_state 0
scoreboard players set $basketball_dance_pose ff_task_state 0
scoreboard players set $basketball_dance_pose_tick ff_task_state 0
scoreboard players set $basketball_dance_head_tossed ff_task_state 0
scoreboard players set @a[tag=ff_active] ff_bb_shift_count 0
scoreboard players set @a[tag=ff_active] ff_bb_sneak_state 0
scoreboard players operation @a[tag=ff_active] ff_bb_sneak_seen = @a[tag=ff_active] ff_ant_sneak_time
function fossil_frights:tasks/hard/basketball_dance/spawn_click
function fossil_frights:tasks/tracker/refresh
