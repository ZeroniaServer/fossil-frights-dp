execute at @s rotated as @s positioned ^-2 ^0 ^0 if entity @s[y_rotation=-45..45] run place template minecraft:security_gate_5x6_5 ~ ~ ~ counterclockwise_90 none 1.0 0 strict
execute at @s rotated as @s positioned ^-2 ^0 ^0 if entity @s[y_rotation=45..135] run place template minecraft:security_gate_5x6_5 ~ ~ ~ none none 1.0 0 strict
execute at @s rotated as @s positioned ^-2 ^0 ^0 if entity @s[y_rotation=135..180] run place template minecraft:security_gate_5x6_5 ~ ~ ~ clockwise_90 none 1.0 0 strict
execute at @s rotated as @s positioned ^-2 ^0 ^0 if entity @s[y_rotation=-180..-135] run place template minecraft:security_gate_5x6_5 ~ ~ ~ clockwise_90 none 1.0 0 strict
execute at @s rotated as @s positioned ^-2 ^0 ^0 if entity @s[y_rotation=-135..-45] run place template minecraft:security_gate_5x6_5 ~ ~ ~ 180 none 1.0 0 strict
