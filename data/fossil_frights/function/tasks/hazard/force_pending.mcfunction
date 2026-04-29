execute unless score $hazard_pending ff_task_state matches 1 run return 0
scoreboard players set $hazard_pending ff_task_state 0
scoreboard players set $hazard_delay ff_task_state 0
function fossil_frights:hazard/start/random
