advancement revoke @s only fossil_frights:evolution_punch
execute unless score $evolution_sel ff_task_state matches 1 run return 0
execute unless score $evolution_done ff_task_state matches 0 run return 0
execute unless entity @s[team=ff_guard,gamemode=!spectator] run return 0
scoreboard players set $evolution_hit ff_task_state 0
scoreboard players set $evolution_was_correct ff_task_state 0
tag @s add ff_evolution_player
execute positioned as @s as @e[type=minecraft:interaction,tag=ff_evolution_hitbox,distance=..8] run function fossil_frights:tasks/hard/evolution/select_hitbox
tag @s remove ff_evolution_player
execute if score $evolution_hit ff_task_state matches 0 run scoreboard players set $evolution_ray ff_task_state 25
execute if score $evolution_hit ff_task_state matches 0 at @s anchored eyes positioned ^ ^ ^ run function fossil_frights:tasks/hard/evolution/raycast
