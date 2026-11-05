advancement revoke @s only fossil_frights:items/febreeze_rod/finish

playsound minecraft:item.bottle.empty block @s ~ ~ ~ 0.65 1.6

execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score $smelly_toilet_sel ff_task_state matches 1 unless score $smelly_toilet_done ff_task_state matches 1 if entity @s[tag=ff_febreeze_rod.sprayed_smelly_toilet] run function fossil_frights:tasks/medium/smelly_toilet/complete
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score $ancient_portal_sel ff_task_state matches 1 unless score $ancient_portal_done ff_task_state matches 1 if entity @s[tag=ff_febreeze_rod.sprayed_ancient_portal] run function fossil_frights:tasks/medium/ancient_portal/complete

tag @s remove ff_febreeze_rod.sprayed_smelly_toilet
tag @s remove ff_febreeze_rod.sprayed_ancient_portal
scoreboard players reset @s ff_febreeze_rod_using_state
