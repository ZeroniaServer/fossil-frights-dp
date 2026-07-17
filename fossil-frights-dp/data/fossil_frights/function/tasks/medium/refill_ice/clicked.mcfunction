advancement revoke @s only fossil_frights:refill_ice_click
execute unless score $refill_ice_sel ff_task_state matches 1 run return 0
execute unless score $refill_ice_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"dry_ice"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"dry_ice"}] run return 0
function fossil_frights:tasks/medium/refill_ice/complete
clear @s *[minecraft:custom_data~{itemID:"dry_ice"}] 1
