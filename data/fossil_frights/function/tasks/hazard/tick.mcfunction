execute unless score $hazard_pending ff_task_state matches 1 run return 0
scoreboard players remove $hazard_delay ff_task_state 1
execute if score $hazard_delay ff_task_state matches ..0 run scoreboard players set $hazard_pending ff_task_state 0
execute if score $hazard_delay ff_task_state matches ..0 run scoreboard players set $hazard_delay ff_task_state 0
execute if score $hazard_delay ff_task_state matches ..0 run function fossil_frights:hazard/start/random
