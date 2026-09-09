execute if score $ancient_portal_timer ff_task_state matches 1.. run particle minecraft:sculk_soul 51.5 72.00 51.5 1 0.5 0.1 0.1 1 force
execute as @a[team=ff_guard,tag=!ff_fade_tp_active,x=49,y=71,z=51,dx=4,dy=1,dz=0] at @s if score $ancient_portal_timer ff_task_state matches 1.. run function fossil_frights:tasks/medium/ancient_portal/teleport_random
execute if score $ancient_portal_timer ff_task_state matches 1 as @e[type=#fossil_frights:display_entities,tag=ff_ancient_portal] run data modify entity @s view_range set value 0
execute if score $ancient_portal_timer ff_task_state matches 1.. run scoreboard players remove $ancient_portal_timer ff_task_state 1
