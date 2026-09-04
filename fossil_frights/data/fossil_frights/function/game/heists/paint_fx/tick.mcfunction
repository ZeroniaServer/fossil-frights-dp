execute if predicate fossil_frights:entity_touching_water_or_location_in_water_cauldron run function fossil_frights:game/heists/paint_fx/clear_from_water

scoreboard players remove @s ff_heist_paint_fx 1
execute if score @s ff_heist_paint_fx matches ..-1 run scoreboard players set @s ff_heist_paint_fx 0

execute if score @s ff_heist_paint_fx matches 1.. if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:periodic_tick":3}} if predicate fossil_frights:entity/on_ground run particle minecraft:dripping_obsidian_tear ~ ~0.01 ~ 0.2 0 0.2 0 1 force
execute if score @s ff_heist_paint_fx matches 1.. if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:periodic_tick":2}} run particle minecraft:falling_obsidian_tear ~ ~1 ~ 0.2 0.4 0.2 0 1 force
execute if score @s ff_heist_paint_fx matches 1.. if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:periodic_tick":5}} run function fossil_frights:game/heists/paint_fx/create_floor_paint_marks

execute if score @s ff_heist_paint_fx matches 0 run function fossil_frights:game/heists/paint_fx/clear
