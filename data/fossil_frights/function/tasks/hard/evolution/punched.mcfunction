advancement revoke @s only fossil_frights:evolution_punch
execute unless score $evolution_sel ff_task_state matches 1 run return 0
execute unless score $evolution_done ff_task_state matches 0 run return 0
execute unless entity @s[tag=ff_active,gamemode=!spectator] run return 0
scoreboard players set $evolution_ray ff_task_state 25
execute at @s anchored eyes positioned ^ ^ ^ run function fossil_frights:tasks/hard/evolution/raycast
