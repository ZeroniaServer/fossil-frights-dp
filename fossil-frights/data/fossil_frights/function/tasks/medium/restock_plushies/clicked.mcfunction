advancement revoke @s only fossil_frights:restock_plushies_click
execute unless score $restock_plushies_sel ff_task_state matches 1 run return 0
execute unless score $restock_plushies_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"skeleton_plushie"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"skeleton_plushie"}] run return 0
function fossil_frights:tasks/medium/restock_plushies/complete
clear @s *[minecraft:custom_data~{itemID:"skeleton_plushie"}] 1
