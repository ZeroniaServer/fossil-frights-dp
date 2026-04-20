tag @s add ff_water_crops_potion
scoreboard players set $water_crops_pending ff_task_state 1
schedule function fossil_frights:tasks/medium/water_crops/check_splash 10t
