execute if score $ancient_portal_dest ff_task_state matches 1 run tp @s 4 85 66 20 25
execute if score $ancient_portal_dest ff_task_state matches 2 run tp @s -12.5 86.5 58 0 0
execute if score $ancient_portal_dest ff_task_state matches 3 run tp @s -25 70 12 -90 0
execute if score $ancient_portal_dest ff_task_state matches 4 run tp @s 0 104 74 -180 0
execute if score $ancient_portal_dest ff_task_state matches 5 run tp @s 0 94 10 0 0
playsound minecraft:block.portal.travel player @s ~ ~ ~ 0.9 1.05
