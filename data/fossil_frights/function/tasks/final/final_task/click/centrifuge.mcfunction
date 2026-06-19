advancement revoke @s only fossil_frights:final_task_centrifuge_click
execute unless entity @s[tag=ff_active] run return 0
execute unless score $final_task_sel ff_task_state matches 1 run return 0
execute unless score $final_task_done ff_task_state matches 0 run return 0
execute unless score $final_task_item_done ff_task_state matches 0 run return 0
execute if score $final_task_item ff_task_state matches 1 if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"instant_coffee"}] run function fossil_frights:tasks/final/final_task/click/centrifuge/accept/instant_coffee
execute if score $final_task_item ff_task_state matches 2 if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"fish_food"}] run function fossil_frights:tasks/final/final_task/click/centrifuge/accept/fish_food
execute if score $final_task_item ff_task_state matches 3 if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"dry_ice"}] run function fossil_frights:tasks/final/final_task/click/centrifuge/accept/dry_ice
execute if score $final_task_item ff_task_state matches 4 if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"fire_tablet"}] run function fossil_frights:tasks/final/final_task/click/centrifuge/accept/fire_tablet
execute if score $final_task_item ff_task_state matches 5 if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"soap"}] run function fossil_frights:tasks/final/final_task/click/centrifuge/accept/soap
execute if score $final_task_item ff_task_state matches 6 if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"chlorine_tablet"}] run function fossil_frights:tasks/final/final_task/click/centrifuge/accept/chlorine_tablet
execute if score $final_task_item ff_task_state matches 7 if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"fertilizer"}] run function fossil_frights:tasks/final/final_task/click/centrifuge/accept/bone_meal
execute if score $final_task_item ff_task_state matches 8 if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"pink_coral_jelly"}] run function fossil_frights:tasks/final/final_task/click/centrifuge/accept/pink_coral_jelly
execute if score $final_task_item ff_task_state matches 9 if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"febreeze_rod"}] run function fossil_frights:tasks/final/final_task/click/centrifuge/accept/febreeze_rod
execute if score $final_task_item ff_task_state matches 10 if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"leather"}] run function fossil_frights:tasks/final/final_task/click/centrifuge/accept/leather
execute if score $final_task_item ff_task_state matches 11 if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"cotton_candy_pink"}] run function fossil_frights:tasks/final/final_task/click/centrifuge/accept/cotton_candy_pink
