advancement revoke @s only fossil_frights:tasks/medium/build_snowman/click
execute unless score $build_snowman_sel ff_task_state matches 1 run return 0
execute unless score $build_snowman_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"pumpkin"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"pumpkin"}] unless items entity @s weapon.mainhand *[minecraft:item_model="fossil_frights:pumpkin"] unless items entity @s weapon.offhand *[minecraft:item_model="fossil_frights:pumpkin"] run return 0
function fossil_frights:tasks/medium/build_snowman/complete
execute unless score $build_snowman_done ff_task_state matches 1 run return 0
execute if items entity @s weapon.* *[minecraft:custom_data~{itemID:"pumpkin"}] run clear @s *[minecraft:custom_data~{itemID:"pumpkin"}] 1
execute unless items entity @s weapon.* *[minecraft:custom_data~{itemID:"pumpkin"}] run clear @s *[minecraft:item_model="fossil_frights:pumpkin"] 1
