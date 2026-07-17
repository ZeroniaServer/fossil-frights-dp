advancement revoke @s only fossil_frights:refill_coffee_click
execute unless score $refill_coffee_sel ff_task_state matches 1 run return 0
execute unless score $refill_coffee_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"instant_coffee"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"instant_coffee"}] run return 0
function fossil_frights:tasks/medium/refill_coffee/complete
clear @s *[minecraft:custom_data~{itemID:"instant_coffee"}] 1
