tag @s add ff_deep_dark_elevator_dropped_item

execute store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 500
execute store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 500
