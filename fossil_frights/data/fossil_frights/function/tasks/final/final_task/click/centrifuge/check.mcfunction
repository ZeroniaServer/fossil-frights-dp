$execute unless items entity @s weapon.* *[minecraft:custom_data~{itemID:"$(id)"}] run return 0

$execute store success score #mainhand ff_dummy if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"$(id)"}]
execute if score #mainhand ff_dummy matches 1 run swing @s mainhand
execute if score #mainhand ff_dummy matches 1 run item modify entity @s weapon.mainhand fossil_frights:deduct_1
execute if score #mainhand ff_dummy matches 0 run swing @s offhand
execute if score #mainhand ff_dummy matches 0 run item modify entity @s weapon.offhand fossil_frights:deduct_1

function fossil_frights:tasks/final/final_task/item_stage_finish
