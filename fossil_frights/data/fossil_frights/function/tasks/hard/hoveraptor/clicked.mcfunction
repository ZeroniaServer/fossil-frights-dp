advancement revoke @s only fossil_frights:tasks/hard/hoveraptor/click
execute unless score $hoveraptor_sel ff_task_state matches 1 run return 0
execute unless score $hoveraptor_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.* *[minecraft:custom_data~{itemID:"hoverboard"}] run return 0
function fossil_frights:tasks/hard/hoveraptor/use
function fossil_frights:tasks/hard/hoveraptor/complete
