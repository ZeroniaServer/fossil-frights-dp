tag @s add ff_deep_dark_elevator_dropped_item

execute store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 500
execute store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 500

execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator.is_moving] run summon minecraft:item_display ~ ~ ~ {Tags:["ff_deep_dark_elevator_seat"],teleport_duration:1,view_range:0}
execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator.is_moving] run ride @s mount @n[type=minecraft:item_display,tag=ff_deep_dark_elevator_seat,distance=..0.1,predicate=!fossil_frights:entity/has_passenger]
