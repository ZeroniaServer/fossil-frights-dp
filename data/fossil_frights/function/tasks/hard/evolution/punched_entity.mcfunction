scoreboard players set $evolution_hit ff_task_state 0
scoreboard players set $evolution_was_correct ff_task_state 0
execute if entity @s[tag=ff_evolution_1] run scoreboard players set $evolution_hit ff_task_state 1
execute if entity @s[tag=ff_evolution_2] run scoreboard players set $evolution_hit ff_task_state 2
execute if entity @s[tag=ff_evolution_3] run scoreboard players set $evolution_hit ff_task_state 3
execute if entity @s[tag=ff_evolution_4] run scoreboard players set $evolution_hit ff_task_state 4
execute if score $evolution_hit ff_task_state = $evolution_step ff_task_state run scoreboard players set $evolution_was_correct ff_task_state 1
execute if score $evolution_was_correct ff_task_state matches 1 if score $evolution_hit ff_task_state matches 1 run function fossil_frights:tasks/hard/evolution/lock_macro {tag:"ff_evolution_1",x:17,y:93,z:13.8}
execute if score $evolution_was_correct ff_task_state matches 1 if score $evolution_hit ff_task_state matches 1 run scoreboard players set $evolution_step ff_task_state 2
execute if score $evolution_was_correct ff_task_state matches 1 if score $evolution_hit ff_task_state matches 2 run function fossil_frights:tasks/hard/evolution/lock_macro {tag:"ff_evolution_2",x:17,y:93,z:12.2}
execute if score $evolution_was_correct ff_task_state matches 1 if score $evolution_hit ff_task_state matches 2 run scoreboard players set $evolution_step ff_task_state 3
execute if score $evolution_was_correct ff_task_state matches 1 if score $evolution_hit ff_task_state matches 3 run function fossil_frights:tasks/hard/evolution/lock_macro {tag:"ff_evolution_3",x:17,y:93,z:11.4}
execute if score $evolution_was_correct ff_task_state matches 1 if score $evolution_hit ff_task_state matches 3 run scoreboard players set $evolution_step ff_task_state 4
execute if score $evolution_was_correct ff_task_state matches 1 if score $evolution_hit ff_task_state matches 4 run function fossil_frights:tasks/hard/evolution/lock_macro {tag:"ff_evolution_4",x:17,y:93,z:10}
execute if score $evolution_was_correct ff_task_state matches 1 if score $evolution_hit ff_task_state matches 4 run scoreboard players set $evolution_step ff_task_state 5
execute if score $evolution_was_correct ff_task_state matches 1 if score $evolution_hit ff_task_state matches 4 run function fossil_frights:tasks/hard/evolution/complete
execute unless score $evolution_was_correct ff_task_state matches 1 run function fossil_frights:tasks/hard/evolution/wrong
