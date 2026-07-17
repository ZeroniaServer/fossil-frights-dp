advancement revoke @s only fossil_frights:ancient_portal_click
execute unless score $ancient_portal_sel ff_task_state matches 1 run return 0
execute unless score $ancient_portal_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"febreeze_rod"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"febreeze_rod"}] run return 0
execute at @e[type=minecraft:interaction,tag=ff_ancient_portal_click,sort=nearest,limit=1,distance=..6] run function fossil_frights:tasks/medium/ancient_portal/complete
clear @s *[minecraft:custom_data~{itemID:"febreeze_rod"}] 1
