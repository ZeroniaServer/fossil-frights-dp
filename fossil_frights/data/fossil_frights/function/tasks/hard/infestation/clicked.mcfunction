advancement revoke @s only fossil_frights:tasks/hard/infestation/click
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute unless score $infestation_sel ff_task_state matches 1 run return 0
execute unless score $infestation_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run return 0
execute unless predicate fossil_frights:player/is_sneaking run scoreboard players add $infestation_answer ff_task_state 1
execute if predicate fossil_frights:player/is_sneaking run scoreboard players remove $infestation_answer ff_task_state 1
execute if score $infestation_answer ff_task_state matches 11.. run scoreboard players set $infestation_answer ff_task_state 1
execute if score $infestation_answer ff_task_state matches ..0 run scoreboard players set $infestation_answer ff_task_state 10
function fossil_frights:tasks/hard/infestation/update_display
execute positioned -32 82 79 run playsound fossil_frights:task.scribble master @a[tag=ff_frights_feedback_viewer,distance=..16] ~ ~ ~ 1 1
