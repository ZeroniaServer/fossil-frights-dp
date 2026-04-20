tag @s add ff_glowberry_tree_2_potion
scoreboard players set $glowberry_tree_2_pending ff_task_state 1
schedule function fossil_frights:tasks/hard/glowberry_trees/tree_2/check_splash 10t
