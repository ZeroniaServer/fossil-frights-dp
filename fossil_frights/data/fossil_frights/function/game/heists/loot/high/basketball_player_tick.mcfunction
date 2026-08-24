# basketball input
execute if predicate fossil_frights:player/input/sneak if score @s ff_bb_sneak_state matches 0 run scoreboard players add @s ff_bb_shift_count 1
execute if predicate fossil_frights:player/input/sneak run scoreboard players set @s ff_bb_sneak_state 1
execute unless predicate fossil_frights:player/input/sneak run scoreboard players set @s ff_bb_sneak_state 0
execute if score @s ff_bb_shift_count matches 3.. if score $basketball_dance_head_tossed ff_task_state matches 0 run function fossil_frights:tasks/hard/basketball_dance/toss_ball
