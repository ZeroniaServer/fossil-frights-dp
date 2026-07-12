advancement revoke @s only fossil_frights:coffee_top_up_click
execute unless score $coffee_top_up_sel ff_task_state matches 1 run return 0
execute unless score $coffee_top_up_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"instant_coffee"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"instant_coffee"}] run return 0
function fossil_frights:tasks/medium/coffee_top_up/complete
clear @s *[minecraft:custom_data~{itemID:"instant_coffee"}] 1
