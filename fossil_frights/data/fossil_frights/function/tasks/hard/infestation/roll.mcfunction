scoreboard players set $infestation_total ff_task_state 0
execute store result score #infestation_tree_1 ff_task_state run random value 0..2
scoreboard players operation $infestation_total ff_task_state += #infestation_tree_1 ff_task_state
execute store result score #infestation_tree_2 ff_task_state run random value 0..2
scoreboard players operation $infestation_total ff_task_state += #infestation_tree_2 ff_task_state
execute store result score #infestation_tree_3 ff_task_state run random value 0..2
scoreboard players operation $infestation_total ff_task_state += #infestation_tree_3 ff_task_state
execute store result score #infestation_tree_4 ff_task_state run random value 0..2
scoreboard players operation $infestation_total ff_task_state += #infestation_tree_4 ff_task_state
execute store result score #infestation_tree_5 ff_task_state run random value 0..1
scoreboard players operation $infestation_total ff_task_state += #infestation_tree_5 ff_task_state
execute store result score #infestation_live ff_task_state run random value 0..1
scoreboard players operation $infestation_total ff_task_state += #infestation_live ff_task_state
execute if score $infestation_total ff_task_state matches ..1 run return run function fossil_frights:tasks/hard/infestation/roll
execute if score #infestation_tree_1 ff_task_state matches 1.. run summon minecraft:silverfish -13.75 95.0 50.5 {Tags:["ff_infestation_silverfish","ff_infestation_fixed"],Silent:true,Invulnerable:true,NoAI:true,PersistenceRequired:true,Rotation:[180f,0f]}
execute if score #infestation_tree_1 ff_task_state matches 2.. run summon minecraft:silverfish -13.25 95.0 50.5 {Tags:["ff_infestation_silverfish","ff_infestation_fixed"],Silent:true,Invulnerable:true,NoAI:true,PersistenceRequired:true,Rotation:[180f,0f]}
execute if score #infestation_tree_2 ff_task_state matches 1.. run summon minecraft:silverfish -11.75 95.0 58.5 {Tags:["ff_infestation_silverfish","ff_infestation_fixed"],Silent:true,Invulnerable:true,NoAI:true,PersistenceRequired:true,Rotation:[0f,0f]}
execute if score #infestation_tree_2 ff_task_state matches 2.. run summon minecraft:silverfish -11.25 95.0 58.5 {Tags:["ff_infestation_silverfish","ff_infestation_fixed"],Silent:true,Invulnerable:true,NoAI:true,PersistenceRequired:true,Rotation:[0f,0f]}
execute if score #infestation_tree_3 ff_task_state matches 1.. run summon minecraft:silverfish -18.5 95.0 60.25 {Tags:["ff_infestation_silverfish","ff_infestation_fixed"],Silent:true,Invulnerable:true,NoAI:true,PersistenceRequired:true,Rotation:[-90f,0f]}
execute if score #infestation_tree_3 ff_task_state matches 2.. run summon minecraft:silverfish -18.5 95.0 60.75 {Tags:["ff_infestation_silverfish","ff_infestation_fixed"],Silent:true,Invulnerable:true,NoAI:true,PersistenceRequired:true,Rotation:[-90f,0f]}
execute if score #infestation_tree_4 ff_task_state matches 1.. run summon minecraft:silverfish -21.75 95.0 48.5 {Tags:["ff_infestation_silverfish","ff_infestation_fixed"],Silent:true,Invulnerable:true,NoAI:true,PersistenceRequired:true,Rotation:[180f,0f]}
execute if score #infestation_tree_4 ff_task_state matches 2.. run summon minecraft:silverfish -21.25 95.0 48.5 {Tags:["ff_infestation_silverfish","ff_infestation_fixed"],Silent:true,Invulnerable:true,NoAI:true,PersistenceRequired:true,Rotation:[180f,0f]}
execute if score #infestation_tree_5 ff_task_state matches 1 run summon minecraft:silverfish -24.5 98.1 54.5 {Tags:["ff_infestation_silverfish","ff_infestation_fixed"],Silent:true,Invulnerable:true,NoAI:true,PersistenceRequired:true,Rotation:[-90f,0f]}
execute if score #infestation_live ff_task_state matches 1 store result score #infestation_live_location ff_task_state run random value 1..2
execute if score #infestation_live ff_task_state matches 1 if score #infestation_live_location ff_task_state matches 1 run summon minecraft:silverfish -15.5 95.0 51.5 {Tags:["ff_infestation_silverfish"],Silent:true,Invulnerable:true,PersistenceRequired:true,home_pos:[-16,95,51],home_radius:2}
execute if score #infestation_live ff_task_state matches 1 if score #infestation_live_location ff_task_state matches 2 run summon minecraft:silverfish -15.5 94.0 60.5 {Tags:["ff_infestation_silverfish"],Silent:true,Invulnerable:true,PersistenceRequired:true,home_pos:[-16,94,60],home_radius:2}
