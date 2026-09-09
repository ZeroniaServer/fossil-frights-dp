tag @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] add ff_deep_dark_elevator.is_moving
scoreboard players set $sound_cooldown ff_deep_dark_elevator -1
tag @a remove ff_deep_dark_elevator.passenger
execute at @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] positioned ~-0.5 ~1 ~-0.5 as @a[dx=0,gamemode=!spectator,predicate=fossil_frights:entity/on_ground] run tag @s add ff_deep_dark_elevator.passenger
execute at @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] positioned ~-0.5 ~1 ~-0.5 as @e[dy=1.5,type=item] run tag @s add ff_deep_dark_elevator.passenger
execute at @e[tag=ff_deep_dark_elevator.passenger] run summon minecraft:item_display ~ ~ ~ {Tags:["ff_deep_dark_elevator_seat"],teleport_duration:1,view_range:0,width:0.001,height:0.001}
execute as @e[tag=ff_deep_dark_elevator.passenger] at @s run ride @s mount @n[type=minecraft:item_display,tag=ff_deep_dark_elevator_seat,distance=..0.1,predicate=!fossil_frights:entity/has_passenger]
tag @e[tag=ff_deep_dark_elevator.passenger] remove ff_deep_dark_elevator.passenger

setblock 51 77 59 minecraft:air strict
setblock 51 68 59 minecraft:air strict
