advancement revoke @s only fossil_frights:shark_bait_click
execute unless score $shark_bait_sel ff_task_state matches 1 run return 0
execute unless score $shark_bait_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"golden_nautilus"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"golden_nautilus"}] run return 0
function fossil_frights:tasks/medium/shark_bait/complete
clear @s *[minecraft:custom_data~{itemID:"golden_nautilus"}] 1
