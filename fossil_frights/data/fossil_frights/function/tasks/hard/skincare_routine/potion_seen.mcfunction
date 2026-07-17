tag @s add ff_skincare_routine_potion
scoreboard players set $skincare_routine_pending ff_task_state 1
schedule function fossil_frights:tasks/hard/skincare_routine/check_splash 10t
