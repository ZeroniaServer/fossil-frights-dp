$execute if score #reindeer_counting_fade_$(id) ff_task_state matches 1.. run return 0
$scoreboard players set #reindeer_counting_fade_$(id) ff_task_state 24
scoreboard players add #reindeer_counting_fades ff_task_state 1
$execute as @e[type=minecraft:text_display,tag=ff_reindeer_counting_board_$(id)] run data merge entity @s {interpolation_duration:0,start_interpolation:0}
$execute at @e[type=minecraft:interaction,tag=ff_reindeer_counting_click_$(id),limit=1] run playsound fossil_frights:task.scribble master @a[tag=ff_frights_feedback_viewer,distance=..16] ~ ~ ~ 1 1
