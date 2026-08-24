execute if predicate fossil_frights:game_state/heist_mode_active if score $basketball_dance_timer ff_task_state matches 1.. run function fossil_frights:game/heists/loot/high/basketball_player_tick
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless entity @s[team=ff_guard] run return 0
execute unless score $basketball_dance_sel ff_task_state matches 1 run return 0
execute unless score $basketball_dance_done ff_task_state matches 0 run return 0
execute unless score $basketball_dance_timer ff_task_state matches 1.. run return 0
# basketball input
execute if predicate fossil_frights:player/input/sneak if score @s ff_bb_sneak_state matches 0 run scoreboard players add @s ff_bb_shift_count 1
execute if predicate fossil_frights:player/input/sneak run scoreboard players set @s ff_bb_sneak_state 1
execute unless predicate fossil_frights:player/input/sneak run scoreboard players set @s ff_bb_sneak_state 0
execute if score @s ff_bb_shift_count matches 3.. if score $basketball_dance_head_tossed ff_task_state matches 0 run function fossil_frights:tasks/hard/basketball_dance/toss_ball
