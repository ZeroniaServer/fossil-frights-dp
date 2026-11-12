advancement revoke @s only fossil_frights:tasks/hard/decorate_tree/click
execute unless score $decorate_tree_sel ff_task_state matches 1 run return 0
execute unless score $decorate_tree_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless predicate fossil_frights:player/inventory/frightmas_star run return 0
clear @s *[minecraft:custom_data~{itemID:"frightmas_star"}] 1
function fossil_frights:tasks/hard/decorate_tree/complete
