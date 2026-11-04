advancement revoke @s only fossil_frights:tasks/medium/cocoa_run/click
execute unless score $cocoa_run_sel ff_task_state matches 1 run return 0
execute unless score $cocoa_run_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"hot_chocolate"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"hot_chocolate"}] run return 0
function fossil_frights:tasks/medium/cocoa_run/complete
clear @s *[minecraft:custom_data~{itemID:"hot_chocolate"}] 1
