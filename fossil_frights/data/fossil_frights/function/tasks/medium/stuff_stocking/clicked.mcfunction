advancement revoke @s only fossil_frights:tasks/medium/stuff_stocking/click
execute unless score $stuff_stocking_sel ff_task_state matches 1 run return 0
execute unless score $stuff_stocking_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"coal"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"coal"}] run return 0
function fossil_frights:tasks/medium/stuff_stocking/complete
clear @s *[minecraft:custom_data~{itemID:"coal"}] 1
