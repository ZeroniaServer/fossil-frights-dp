execute unless function fossil_frights:door/fake_pressure_plate/check run return 0

execute unless entity @s[tag=ff_fake_pressure_plate.pressed] run data modify entity @s block_state.Properties.powered set value "true"
execute unless entity @s[tag=ff_fake_pressure_plate.pressed] run playsound minecraft:block.stone_pressure_plate.click_on block @a ~ ~ ~
execute unless entity @s[tag=ff_fake_pressure_plate.pressed] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~-1 if block ~ ~ ~ #doors[open=false] align xyz as @e[dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_door.part_0] positioned ~0.5 ~ ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},z:{max:0.5}}}} at @s run function fossil_frights:door/click/toggle_door
execute unless entity @s[tag=ff_fake_pressure_plate.pressed] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~1 if block ~ ~ ~ #doors[open=false] align xyz as @e[dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_door.part_0] positioned ~0.5 ~ ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},z:{max:0.5}}}} at @s run function fossil_frights:door/click/toggle_door
execute unless entity @s[tag=ff_fake_pressure_plate.pressed] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~ ~ if block ~ ~ ~ #doors[open=false] align xyz as @e[dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_door.part_0] positioned ~0.5 ~ ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},z:{max:0.5}}}} at @s run function fossil_frights:door/click/toggle_door
execute unless entity @s[tag=ff_fake_pressure_plate.pressed] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~ ~ if block ~ ~ ~ #doors[open=false] align xyz as @e[dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_door.part_0] positioned ~0.5 ~ ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},z:{max:0.5}}}} at @s run function fossil_frights:door/click/toggle_door

execute store result score @s ff_button_unpress_timestamp run time query gametime
scoreboard players add @s ff_button_unpress_timestamp 20
schedule function fossil_frights:door/fake_pressure_plate/unpress 20t append
tag @s add ff_fake_pressure_plate.pressed
