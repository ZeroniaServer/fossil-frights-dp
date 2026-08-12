advancement revoke @s only fossil_frights:tasks/medium/revitalize_coral/click
execute unless score $revitalize_coral_sel ff_task_state matches 1 run return 0
execute unless score $revitalize_coral_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"pink_jelly"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"pink_jelly"}] run return 0
function fossil_frights:tasks/medium/revitalize_coral/complete
clear @s *[minecraft:custom_data~{itemID:"pink_jelly"}] 1
