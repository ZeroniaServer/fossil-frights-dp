function fossil_frights:tasks/medium/relight_campfire/cleanup
scoreboard players set $relight_campfire_sel ff_task_state 0
scoreboard players set $relight_campfire_done ff_task_state 0
setblock 59 85 73 minecraft:campfire[lit=true]
