data modify storage fossil_frights:session save_scores_loop_list set from storage fossil_frights:session saved_scoreboard_objectives
data modify storage fossil_frights:session save_scores_loop_args set value {}
data modify storage fossil_frights:session save_scores_loop_args.name set from storage fossil_frights:session save_data.name
data modify storage fossil_frights:session save_scores_loop_args.objective set from storage fossil_frights:session save_scores_loop_list[-1]
data remove storage fossil_frights:session save_scores_loop_list[-1]
function fossil_frights:player/session/end/save_scores/loop with storage fossil_frights:session save_scores_loop_args
data remove storage fossil_frights:session save_scores_loop_args
data remove storage fossil_frights:session save_scores_loop_list
