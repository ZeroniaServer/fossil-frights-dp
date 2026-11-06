scoreboard players set #reindeer_counting_previous ff_task_state 0
$execute if score $reindeer_counting_board_$(id) ff_task_state matches 1 run scoreboard players set #reindeer_counting_previous ff_task_state 1
$execute if score #reindeer_counting_previous ff_task_state matches 0 run scoreboard players set $reindeer_counting_board_$(id) ff_task_state 1
$execute if score #reindeer_counting_previous ff_task_state matches 1 run scoreboard players set $reindeer_counting_board_$(id) ff_task_state 0
$execute if score $reindeer_counting_board_$(id) ff_task_state matches 0 as @e[type=minecraft:text_display,tag=ff_reindeer_counting_board_$(id)] run data modify entity @s text set value {text:"",font:"fossil_frights:frightmas/reindeer_counting",color:"white"}
$execute if score $reindeer_counting_board_$(id) ff_task_state matches 1 as @e[type=minecraft:text_display,tag=ff_reindeer_counting_board_$(id)] run data modify entity @s text set value {text:"",font:"fossil_frights:frightmas/reindeer_counting",color:"white"}
