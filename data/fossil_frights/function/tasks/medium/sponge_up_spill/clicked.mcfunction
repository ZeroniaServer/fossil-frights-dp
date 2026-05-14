advancement revoke @s only fossil_frights:sponge_up_spill_click
execute unless score $sponge_up_spill_sel ff_task_state matches 1 run return 0
execute unless score $sponge_up_spill_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"sponge"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"sponge"}] run return 0
function fossil_frights:tasks/medium/sponge_up_spill/complete
clear @s *[minecraft:custom_data~{itemID:"sponge"}] 1
