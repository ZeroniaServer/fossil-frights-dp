advancement revoke @s only fossil_frights:tasks/medium/paint_candy_cane/click
execute unless score $paint_candy_cane_sel ff_task_state matches 1 run return 0
execute unless score $paint_candy_cane_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"pink_jelly"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"pink_jelly"}] run return 0
function fossil_frights:tasks/medium/paint_candy_cane/complete
clear @s *[minecraft:custom_data~{itemID:"pink_jelly"}] 1
