advancement revoke @s only fossil_frights:tasks/final/final_task/centrifuge_click
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless score $final_task_sel ff_task_state matches 1 run return 0
execute unless score $final_task_done ff_task_state matches 0 run return 0
execute unless score $final_task_item_done ff_task_state matches 0 run return 0
execute if score $final_task_item ff_task_state matches 1 run function fossil_frights:tasks/final/final_task/click/centrifuge/check {id:"instant_coffee"}
execute if score $final_task_item ff_task_state matches 2 run function fossil_frights:tasks/final/final_task/click/centrifuge/check {id:"fish_food"}
execute if score $final_task_item ff_task_state matches 3 run function fossil_frights:tasks/final/final_task/click/centrifuge/check {id:"dry_ice"}
execute if score $final_task_item ff_task_state matches 4 run function fossil_frights:tasks/final/final_task/click/centrifuge/check {id:"fire_tablet"}
execute if score $final_task_item ff_task_state matches 5 run function fossil_frights:tasks/final/final_task/click/centrifuge/check {id:"soap"}
execute if score $final_task_item ff_task_state matches 6 run function fossil_frights:tasks/final/final_task/click/centrifuge/check {id:"chlorine_tablet"}
execute if score $final_task_item ff_task_state matches 7 run function fossil_frights:tasks/final/final_task/click/centrifuge/check {id:"fertilizer"}
execute if score $final_task_item ff_task_state matches 8 run function fossil_frights:tasks/final/final_task/click/centrifuge/check {id:"pink_jelly"}
execute if score $final_task_item ff_task_state matches 9 run function fossil_frights:tasks/final/final_task/click/centrifuge/check {id:"febreeze_rod"}
execute if score $final_task_item ff_task_state matches 10 run function fossil_frights:tasks/final/final_task/click/centrifuge/check {id:"leather"}
execute if score $final_task_item ff_task_state matches 11 run function fossil_frights:tasks/final/final_task/click/centrifuge/check {id:"cotton_candy_pink"}
