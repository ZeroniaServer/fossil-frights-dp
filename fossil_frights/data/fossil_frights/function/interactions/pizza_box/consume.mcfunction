execute unless data entity @s item.components."minecraft:custom_data".pizza_slices run function fossil_frights:interactions/pizza_box/reset
execute if data entity @s item.components."minecraft:custom_data"{pizza_slices:4} run return run function fossil_frights:interactions/pizza_box/eat_4
execute if data entity @s item.components."minecraft:custom_data"{pizza_slices:3} run return run function fossil_frights:interactions/pizza_box/eat_3
execute if data entity @s item.components."minecraft:custom_data"{pizza_slices:2} run return run function fossil_frights:interactions/pizza_box/eat_2
execute if data entity @s item.components."minecraft:custom_data"{pizza_slices:1} run return run function fossil_frights:interactions/pizza_box/eat_1
