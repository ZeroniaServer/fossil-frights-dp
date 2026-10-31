scoreboard players reset @s

data modify storage fossil_frights:session restore_scores_loop_list set from storage fossil_frights:session saved_scoreboard_objectives
data modify storage fossil_frights:session restore_scores_loop_args set value {}
data modify storage fossil_frights:session restore_scores_loop_args.uuid set from storage fossil_frights:session player_data.uuid
data modify storage fossil_frights:session restore_scores_loop_args.objective set from storage fossil_frights:session restore_scores_loop_list[-1]
data remove storage fossil_frights:session restore_scores_loop_list[-1]
function fossil_frights:player/session/start/restore_scores/loop with storage fossil_frights:session restore_scores_loop_args
data remove storage fossil_frights:session restore_scores_loop_args
data remove storage fossil_frights:session restore_scores_loop_list
