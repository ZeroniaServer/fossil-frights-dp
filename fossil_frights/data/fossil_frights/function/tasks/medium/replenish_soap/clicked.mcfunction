advancement revoke @s only fossil_frights:tasks/medium/replenish_soap/click
execute unless score $replenish_soap_sel ff_task_state matches 1 run return 0
execute unless score $replenish_soap_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"soap"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"soap"}] run return 0
function fossil_frights:tasks/medium/replenish_soap/complete
clear @s *[minecraft:custom_data~{itemID:"soap"}] 1
