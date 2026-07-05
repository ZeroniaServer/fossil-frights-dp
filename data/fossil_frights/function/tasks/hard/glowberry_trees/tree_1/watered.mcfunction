scoreboard players set $glowberry_tree_1_pending ff_task_state 0
scoreboard players set $glowberry_tree_1_watered ff_task_state 1
tag @e[tag=ff_glowberry_tree_1_potion] remove ff_glowberry_tree_1_potion
execute positioned 12 82 40 run playsound minecraft:entity.generic.splash block @a[team=ff_guard,distance=..18] ~ ~ ~ 0.8 1.25
execute positioned 12 82 40 run particle minecraft:splash ~ ~ ~ 0.55 0.55 0.55 0.08 45 force
execute positioned 12 82 40 run particle minecraft:bubble ~ ~ ~ 0.45 0.65 0.45 0.04 24 force
execute positioned 12 82 40 run particle minecraft:fishing ~ ~ ~ 0.55 0.5 0.55 0.08 20 force
function fossil_frights:tasks/hard/glowberry_trees/complete
