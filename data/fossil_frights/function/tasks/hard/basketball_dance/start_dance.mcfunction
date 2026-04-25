scoreboard players set $basketball_dance_timer ff_task_state 300
scoreboard players set $basketball_dance_pose ff_task_state 0
scoreboard players set $basketball_dance_pose_tick ff_task_state 5
scoreboard players set $basketball_dance_head_tossed ff_task_state 0
scoreboard players set @a[tag=ff_active] ff_bb_shift_count 0
scoreboard players set @a[tag=ff_active] ff_bb_sneak_state 0
scoreboard players operation @a[tag=ff_active] ff_bb_sneak_seen = @a[tag=ff_active] ff_ant_sneak_time
execute positioned -16.5 80.8 37.5 run playsound minecraft:block.note_block.bass master @a[tag=ff_active,distance=..20] ~ ~ ~ 0.9 1.1
execute positioned -16.5 80.8 37.5 run playsound minecraft:block.note_block.chime master @a[tag=ff_active,distance=..20] ~ ~ ~ 0.6 1.5
function fossil_frights:tasks/hard/basketball_dance/pose_1
