tag @s add ff_glowberry_tree_1_potion
scoreboard players set $glowberry_tree_1_pending ff_task_state 1
schedule function fossil_frights:tasks/hard/glowberry_trees/tree_1/check_splash 10t
