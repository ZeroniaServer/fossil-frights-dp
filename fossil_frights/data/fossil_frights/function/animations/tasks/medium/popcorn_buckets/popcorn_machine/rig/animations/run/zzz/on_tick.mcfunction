scoreboard players remove @s aj.tween_duration 1
execute if score @s aj.tween_duration matches 1.. run return 1
execute if score @s aj.tween_duration matches 0 on passengers run data modify entity @s interpolation_duration set value 1
data remove storage fossil_frights:vending_machine_aj_temp args
execute store result storage fossil_frights:vending_machine_aj_temp args.frame int 1 run scoreboard players get @s aj.run.frame
function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/animations/run/zzz/apply_frame with storage fossil_frights:vending_machine_aj_temp args
execute if score @s aj.run.frame matches 140 run return run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/animations/run/zzz/loop_mode_stop
scoreboard players add @s aj.run.frame 1