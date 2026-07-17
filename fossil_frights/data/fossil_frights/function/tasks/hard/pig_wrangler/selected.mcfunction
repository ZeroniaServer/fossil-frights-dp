execute if score $pig_wrangler_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $pig_wrangler_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/pig_wrangler
scoreboard players set $pig_wrangler_sel ff_task_state 1
scoreboard players set $pig_wrangler_done ff_task_state 0
scoreboard players set $pig_wrangler_in_pen ff_task_state 0
scoreboard players set $pig_wrangler_fed ff_task_state 0
kill @e[type=minecraft:pig,tag=ff_pig_wrangler_pig]
execute store result score $pig_wrangler_pick ff_task_state run random value 1..3
execute if score $pig_wrangler_pick ff_task_state matches 1 run summon minecraft:pig 60 82 74 {Invulnerable:true,PersistenceRequired:true,Tags:["ff_pig_wrangler_pig","ff_pig_wrangler_homebound"],home_pos:[60,82,74],home_radius:5}
execute if score $pig_wrangler_pick ff_task_state matches 2 run summon minecraft:pig 37 80 55 {Invulnerable:true,PersistenceRequired:true,Tags:["ff_pig_wrangler_pig","ff_pig_wrangler_homebound"],home_pos:[37,80,55],home_radius:5}
execute if score $pig_wrangler_pick ff_task_state matches 3 run summon minecraft:pig 5 80 57 {Invulnerable:true,PersistenceRequired:true,Tags:["ff_pig_wrangler_pig","ff_pig_wrangler_homebound"],home_pos:[5,80,57],home_radius:5}
function fossil_frights:tasks/tracker/refresh
