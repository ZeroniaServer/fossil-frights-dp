scoreboard players set $glowberry_tree_2_pending ff_task_state 0
scoreboard players set $glowberry_tree_2_watered ff_task_state 1
tag @e[tag=ff_glowberry_tree_2_potion] remove ff_glowberry_tree_2_potion
execute positioned -12 82 40 run playsound minecraft:entity.generic.splash block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.8 1.25
execute positioned -12 82 40 run particle minecraft:splash ~ ~ ~ 0.55 0.55 0.55 0.08 45 force
execute positioned -12 82 40 run particle minecraft:bubble ~ ~ ~ 0.45 0.65 0.45 0.04 24 force
execute positioned -12 82 40 run particle minecraft:fishing ~ ~ ~ 0.55 0.5 0.55 0.08 20 force
function fossil_frights:tasks/hard/glowberry_trees/complete
