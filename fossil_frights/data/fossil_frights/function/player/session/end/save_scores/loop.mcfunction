$execute if score $(name) $(objective) matches -2147483648.. store result storage fossil_frights:session save_data.scores."$(objective)" int 1 run scoreboard players get $(name) $(objective)

execute unless data storage fossil_frights:session save_scores_loop_list[0] run return 1
data modify storage fossil_frights:session save_scores_loop_args.objective set from storage fossil_frights:session save_scores_loop_list[-1]
data remove storage fossil_frights:session save_scores_loop_list[-1]
function fossil_frights:player/session/end/save_scores/loop with storage fossil_frights:session save_scores_loop_args
