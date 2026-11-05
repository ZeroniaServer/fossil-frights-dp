advancement revoke @s only fossil_frights:tasks/hard/reindeer_counting/click_2
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute unless score $reindeer_counting_sel ff_task_state matches 1 run return 0
execute unless score $reindeer_counting_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run return 0
scoreboard players set #reindeer_counting_previous ff_task_state 0
execute if score $reindeer_counting_board_2 ff_task_state matches 1 run scoreboard players set #reindeer_counting_previous ff_task_state 1
execute if score #reindeer_counting_previous ff_task_state matches 0 run scoreboard players set $reindeer_counting_board_2 ff_task_state 1
execute if score #reindeer_counting_previous ff_task_state matches 1 run scoreboard players set $reindeer_counting_board_2 ff_task_state 0
execute if score $reindeer_counting_board_2 ff_task_state matches 0 as @e[type=minecraft:text_display,tag=ff_reindeer_counting_board_2] run data modify entity @s text set value {text:"",font:"fossil_frights:frightmas/reindeer_counting",color:"white"}
execute if score $reindeer_counting_board_2 ff_task_state matches 1 as @e[type=minecraft:text_display,tag=ff_reindeer_counting_board_2] run data modify entity @s text set value {text:"",font:"fossil_frights:frightmas/reindeer_counting",color:"white"}
execute at @e[type=minecraft:interaction,tag=ff_reindeer_counting_click_2,limit=1] run playsound fossil_frights:task.scribble master @a[tag=ff_frights_feedback_viewer,distance=..16] ~ ~ ~ 1 1
function fossil_frights:tasks/hard/reindeer_counting/check_complete
