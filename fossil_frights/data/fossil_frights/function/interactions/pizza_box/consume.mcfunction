execute unless items entity @s contents *[custom_data~{ff_pizza_box:{}}] run function fossil_frights:interactions/pizza_box/reset
execute if items entity @s contents *[custom_data~{ff_pizza_box:{slices_left:4}}] run return run function fossil_frights:interactions/pizza_box/eat_4
execute if items entity @s contents *[custom_data~{ff_pizza_box:{slices_left:3}}] run return run function fossil_frights:interactions/pizza_box/eat_3
execute if items entity @s contents *[custom_data~{ff_pizza_box:{slices_left:2}}] run return run function fossil_frights:interactions/pizza_box/eat_2
execute if items entity @s contents *[custom_data~{ff_pizza_box:{slices_left:1}}] run return run function fossil_frights:interactions/pizza_box/eat_1
execute if items entity @s contents *[custom_data~{ff_pizza_box:{slices_left:0}}] run return 0
