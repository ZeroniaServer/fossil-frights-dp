advancement revoke @s only fossil_frights:tasks/medium/defrost_village/click
execute unless score $defrost_village_sel ff_task_state matches 1 run return 0
execute unless score $defrost_village_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"fire_tablet"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"fire_tablet"}] run return 0
function fossil_frights:tasks/medium/defrost_village/complete
clear @s *[minecraft:custom_data~{itemID:"fire_tablet"}] 1
