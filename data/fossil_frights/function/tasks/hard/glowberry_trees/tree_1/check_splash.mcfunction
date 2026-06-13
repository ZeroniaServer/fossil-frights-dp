execute unless score $glowberry_trees_sel ff_task_state matches 1 run scoreboard players set $glowberry_tree_1_pending ff_task_state 0
execute unless score $glowberry_trees_sel ff_task_state matches 1 run return 0
execute if score $glowberry_trees_done ff_task_state matches 1 run scoreboard players set $glowberry_tree_1_pending ff_task_state 0
execute if score $glowberry_trees_done ff_task_state matches 1 run return 0
execute if score $glowberry_tree_1_watered ff_task_state matches 1 run function fossil_frights:tasks/hard/glowberry_trees/tree_1/pending_clear
execute if score $glowberry_tree_1_watered ff_task_state matches 1 run return 0
execute unless entity @e[tag=ff_glowberry_tree_1_potion] run function fossil_frights:tasks/hard/glowberry_trees/tree_1/watered
execute if score $glowberry_tree_1_watered ff_task_state matches 1 run return 0
execute unless entity @e[tag=ff_glowberry_tree_1_potion,x=10,y=80,z=38,dx=4,dy=2,dz=4] run function fossil_frights:tasks/hard/glowberry_trees/tree_1/pending_clear
execute if entity @e[limit=1,tag=ff_glowberry_tree_1_potion,x=10,y=80,z=38,dx=4,dy=2,dz=4] run schedule function fossil_frights:tasks/hard/glowberry_trees/tree_1/check_splash 5t
