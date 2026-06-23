execute if score $a_c_reset_variant ff_task_state matches 1 run place template minecraft:ac_1 -10 103 56
execute if score $a_c_reset_variant ff_task_state matches 2 run place template minecraft:ac_2 -10 103 56
execute if score $a_c_reset_variant ff_task_state matches 3 run place template minecraft:ac_3 -10 103 56

#Unwaterlog unintended blocks
fill 3 108 58 5 108 58 minecraft:waxed_oxidized_copper_grate[waterlogged=false]
fill 6 108 59 6 108 61 minecraft:waxed_oxidized_copper_grate[waterlogged=false]
execute if score $a_c_reset_variant ff_task_state matches 2 run setblock 5 108 57 minecraft:light_blue_stained_glass_pane[south=false,waterlogged=false]