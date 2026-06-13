execute unless score $water_crops_sel ff_task_state matches 1 run scoreboard players set $water_crops_pending ff_task_state 0
execute unless score $water_crops_sel ff_task_state matches 1 run return 0
execute if score $water_crops_done ff_task_state matches 1 run scoreboard players set $water_crops_pending ff_task_state 0
execute if score $water_crops_done ff_task_state matches 1 run return 0
execute unless entity @e[limit=1,tag=ff_water_crops_potion] run function fossil_frights:tasks/medium/water_crops/complete
execute if score $water_crops_done ff_task_state matches 1 run return 0
execute unless entity @e[limit=1,tag=ff_water_crops_potion,x=58,y=81,z=69,dx=5,dy=2,dz=9] run function fossil_frights:tasks/medium/water_crops/pending_clear
execute if entity @e[limit=1,tag=ff_water_crops_potion,x=58,y=81,z=69,dx=5,dy=2,dz=9] run schedule function fossil_frights:tasks/medium/water_crops/check_splash 5t
