function fossil_frights:tasks/final/final_task/screen/cleanup
execute if score $final_task_dino ff_task_state matches 1 run data modify storage fossil_frights:final_task dino set value "pterodactyl"
execute if score $final_task_dino ff_task_state matches 2 run data modify storage fossil_frights:final_task dino set value "plesiosaur"
execute if score $final_task_dino ff_task_state matches 3 run data modify storage fossil_frights:final_task dino set value "trike"
execute if score $final_task_dino ff_task_state matches 4 run data modify storage fossil_frights:final_task dino set value "sniffer"
execute if score $final_task_dino ff_task_state matches 5 run data modify storage fossil_frights:final_task dino set value "t-rex"
execute if score $final_task_dino ff_task_state matches 6 run data modify storage fossil_frights:final_task dino set value "velociraptor"

execute if score $final_task_item ff_task_state matches 1 run data modify storage fossil_frights:final_task item set value "instant_coffee"
execute if score $final_task_item ff_task_state matches 2 run data modify storage fossil_frights:final_task item set value "fish_food"
execute if score $final_task_item ff_task_state matches 3 run data modify storage fossil_frights:final_task item set value "dry_ice"
execute if score $final_task_item ff_task_state matches 4 run data modify storage fossil_frights:final_task item set value "fire_tablet"
execute if score $final_task_item ff_task_state matches 5 run data modify storage fossil_frights:final_task item set value "soap"
execute if score $final_task_item ff_task_state matches 6 run data modify storage fossil_frights:final_task item set value "chlorine_tablet"
execute if score $final_task_item ff_task_state matches 7 run data modify storage fossil_frights:final_task item set value "fertilizer"
execute if score $final_task_item ff_task_state matches 8 run data modify storage fossil_frights:final_task item set value "pink_jelly"
execute if score $final_task_item ff_task_state matches 9 run data modify storage fossil_frights:final_task item set value "febreeze_rod"
execute if score $final_task_item ff_task_state matches 10 run data modify storage fossil_frights:final_task item set value "leather"
execute if score $final_task_item ff_task_state matches 11 run data modify storage fossil_frights:final_task item set value "cotton_candy"

function fossil_frights:tasks/final/final_task/screen/screen_macro with storage fossil_frights:final_task
data remove storage fossil_frights:final_task dino
data remove storage fossil_frights:final_task item