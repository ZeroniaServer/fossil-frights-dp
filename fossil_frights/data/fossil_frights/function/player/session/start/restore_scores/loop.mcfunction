$execute if data storage fossil_frights:player_data players."$(uuid)".scores."$(objective)" store result score @s $(objective) run data get storage fossil_frights:player_data players."$(uuid)".scores."$(objective)"

execute unless data storage fossil_frights:session restore_scores_loop_list[0] run return 1
data modify storage fossil_frights:session restore_scores_loop_args.objective set from storage fossil_frights:session restore_scores_loop_list[-1]
data remove storage fossil_frights:session restore_scores_loop_list[-1]
function fossil_frights:player/session/start/restore_scores/loop with storage fossil_frights:session restore_scores_loop_args
