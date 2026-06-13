execute unless score $skincare_routine_sel ff_task_state matches 1 run scoreboard players set $skincare_routine_pending ff_task_state 0
execute unless score $skincare_routine_sel ff_task_state matches 1 run return 0
execute if score $skincare_routine_done ff_task_state matches 1 run scoreboard players set $skincare_routine_pending ff_task_state 0
execute if score $skincare_routine_done ff_task_state matches 1 run return 0
execute unless entity @e[limit=1,tag=ff_skincare_routine_potion] run function fossil_frights:tasks/hard/skincare_routine/complete
execute if score $skincare_routine_done ff_task_state matches 1 run return 0
execute unless entity @e[limit=1,tag=ff_skincare_routine_potion,x=-1,y=104,z=15,dx=2,dy=3,dz=4] run function fossil_frights:tasks/hard/skincare_routine/pending_clear
execute if entity @e[limit=1,tag=ff_skincare_routine_potion,x=-1,y=104,z=15,dx=2,dy=3,dz=4] run schedule function fossil_frights:tasks/hard/skincare_routine/check_splash 5t
