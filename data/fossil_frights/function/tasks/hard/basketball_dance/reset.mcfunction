scoreboard players set $basketball_dance_timer ff_task_state 0
scoreboard players set $basketball_dance_pose ff_task_state 0
scoreboard players set $basketball_dance_pose_tick ff_task_state 0
scoreboard players set $basketball_dance_head_tossed ff_task_state 0
scoreboard players set $basketball_dance_head_tossed_once ff_task_state 0
kill @e[type=minecraft:interaction,tag=ff_basketball_dance_jukebox_click]
scoreboard players set @a ff_bb_shift_count 0
scoreboard players set @a ff_bb_sneak_state 0
scoreboard players operation @a ff_bb_sneak_seen = @a ff_ant_sneak_time
function fossil_frights:tasks/hard/basketball_dance/pose_idle
