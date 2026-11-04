advancement revoke @s only fossil_frights:tasks/hard/decorate_tree/click
execute unless score $decorate_tree_sel ff_task_state matches 1 run return 0
execute unless score $decorate_tree_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless items entity @s inventory.* *[minecraft:custom_data~{itemID:"star"}] unless items entity @s weapon.* *[minecraft:custom_data~{itemID:"star"}] run return 0
clear @s *[minecraft:custom_data~{itemID:"star"}] 1
function fossil_frights:tasks/hard/decorate_tree/complete
