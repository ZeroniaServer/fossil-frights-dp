execute unless score $defrost_timeline_sel ff_task_state matches 1 run return 0
execute unless score $defrost_timeline_done ff_task_state matches 0 run return 0
execute unless score $defrost_timeline_hadean ff_task_state matches 0 run return 0
scoreboard players set $defrost_timeline_hadean ff_task_state 1
particle minecraft:flame ~ ~0.2 ~ 0.4 0.35 0.4 0.02 25 force
particle minecraft:poof ~ ~0.2 ~ 0.35 0.25 0.35 0.03 20 force
playsound minecraft:block.fire.extinguish master @a[tag=ff_frights_feedback_viewer,distance=..20] ~ ~ ~ 0.8 1.2
function fossil_frights:items/util/return_all_but_one_to_thrower
kill @s[type=minecraft:item]
execute if score $defrost_timeline_permian ff_task_state matches 1 if score $defrost_timeline_hadean ff_task_state matches 1 run function fossil_frights:tasks/hard/defrost_timeline/complete
