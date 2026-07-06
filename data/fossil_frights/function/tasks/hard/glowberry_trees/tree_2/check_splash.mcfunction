execute unless score $glowberry_trees_sel ff_task_state matches 1 run scoreboard players set $glowberry_tree_2_pending ff_task_state 0
execute unless score $glowberry_trees_sel ff_task_state matches 1 run return 0
execute if score $glowberry_trees_done ff_task_state matches 1 run scoreboard players set $glowberry_tree_2_pending ff_task_state 0
execute if score $glowberry_trees_done ff_task_state matches 1 run return 0
execute if score $glowberry_tree_2_watered ff_task_state matches 1 run function fossil_frights:tasks/hard/glowberry_trees/tree_2/pending_clear
execute if score $glowberry_tree_2_watered ff_task_state matches 1 run return 0
execute unless entity @e[limit=1,tag=ff_glowberry_tree_2_potion] run function fossil_frights:tasks/hard/glowberry_trees/tree_2/watered
execute if score $glowberry_tree_2_watered ff_task_state matches 1 run return 0
execute unless entity @e[limit=1,tag=ff_glowberry_tree_2_potion,x=-13,y=81,z=39,dx=2,dy=6,dz=2] run function fossil_frights:tasks/hard/glowberry_trees/tree_2/pending_clear
execute if entity @e[limit=1,tag=ff_glowberry_tree_2_potion,x=-13,y=81,z=39,dx=2,dy=6,dz=2] run schedule function fossil_frights:tasks/hard/glowberry_trees/tree_2/check_splash 5t
