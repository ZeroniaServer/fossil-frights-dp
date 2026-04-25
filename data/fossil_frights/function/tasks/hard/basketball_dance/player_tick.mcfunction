execute unless score $basketball_dance_sel ff_task_state matches 1 run return 0
execute unless score $basketball_dance_done ff_task_state matches 0 run return 0
execute unless score $basketball_dance_timer ff_task_state matches 1.. run return 0
scoreboard players add @s ff_ant_sneak_time 0
execute if score @s ff_ant_sneak_time > @s ff_bb_sneak_seen if score @s ff_bb_sneak_state matches 0 run scoreboard players add @s ff_bb_shift_count 1
execute if score @s ff_ant_sneak_time > @s ff_bb_sneak_seen if score @s ff_bb_sneak_state matches 0 run scoreboard players set @s ff_bb_sneak_state 1
execute unless score @s ff_ant_sneak_time > @s ff_bb_sneak_seen run scoreboard players set @s ff_bb_sneak_state 0
scoreboard players operation @s ff_bb_sneak_seen = @s ff_ant_sneak_time
execute if score @s ff_bb_shift_count matches 3.. if score $basketball_dance_head_tossed ff_task_state matches 0 run function fossil_frights:tasks/hard/basketball_dance/toss_ball
