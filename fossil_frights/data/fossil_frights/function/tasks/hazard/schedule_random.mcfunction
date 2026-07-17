execute if score $hazard_pending ff_task_state matches 1 run return 0
scoreboard players set $hazard_pending ff_task_state 1
execute store result score $hazard_delay ff_task_state run random value 300..2400
