execute if score $pig_wrangler_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $pig_wrangler_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/pig_wrangler
scoreboard players set $pig_wrangler_sel ff_task_state 1
scoreboard players set $pig_wrangler_done ff_task_state 0
scoreboard players set $pig_wrangler_in_pen ff_task_state 0
scoreboard players set $pig_wrangler_fed ff_task_state 0
scoreboard players set $pig_wrangler_tower_seen ff_task_state 0
kill @e[type=minecraft:pig,tag=ff_pig_wrangler_pig]
execute store result score $pig_wrangler_pick ff_task_state run random value 1..4
execute if score $pig_wrangler_pick ff_task_state matches 1 run summon minecraft:pig 21 85 48 {Invulnerable:true,PersistenceRequired:true,Tags:["ff_pig_wrangler_pig","ff_pig_wrangler_homebound"],Team:"ff_pink_pig",home_pos:[21,85,48],home_radius:5}
execute if score $pig_wrangler_pick ff_task_state matches 2 run summon minecraft:pig 41 80 34 {Invulnerable:true,PersistenceRequired:true,Tags:["ff_pig_wrangler_pig","ff_pig_wrangler_homebound"],Team:"ff_pink_pig",home_pos:[41,80,34],home_radius:5}
execute if score $pig_wrangler_pick ff_task_state matches 3 run summon minecraft:pig 68 80 37 {Invulnerable:true,PersistenceRequired:true,Tags:["ff_pig_wrangler_pig","ff_pig_wrangler_homebound"],Team:"ff_pink_pig",home_pos:[68,80,37],home_radius:5}
execute if score $pig_wrangler_pick ff_task_state matches 4 run summon minecraft:pig 66 85 70 {Invulnerable:true,PersistenceRequired:true,Tags:["ff_pig_wrangler_pig","ff_pig_wrangler_homebound"],Team:"ff_pink_pig",home_pos:[66,85,70],home_radius:5}
function fossil_frights:tasks/tracker/refresh
