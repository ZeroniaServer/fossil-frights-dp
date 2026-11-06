advancement revoke @s only fossil_frights:tasks/hard/reindeer_counting/click_6
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute unless score $reindeer_counting_sel ff_task_state matches 1 run return 0
execute unless score $reindeer_counting_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run return 0
function fossil_frights:tasks/hard/reindeer_counting/fade/start {id:6}
