execute if score $a_c_reset_variant ff_task_state matches 1 run place template fossil_frights:a_c/1 -10 103 56 none none 1 0 strict
execute if score $a_c_reset_variant ff_task_state matches 2 run place template fossil_frights:a_c/2 -10 103 56 none none 1 0 strict
execute if score $a_c_reset_variant ff_task_state matches 3 run place template fossil_frights:a_c/3 -10 103 56 none none 1 0 strict

#Unwaterlog unintended blocks
fill 3 108 58 5 108 58 minecraft:waxed_oxidized_copper_grate[waterlogged=false]
fill 6 108 59 6 108 61 minecraft:waxed_oxidized_copper_grate[waterlogged=false]

