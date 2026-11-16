item replace entity @s armor.head from block 0 0 0 container.0
item replace entity @s weapon.mainhand from block 0 0 0 container.1
loot replace block 0 0 0 container.0 1 fish {pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"armor.head"}}]}],modifier:{type:"minecraft:filtered",item_filter:{predicates:{"minecraft:damage":{}}},on_pass:{type:"minecraft:copy_components",source:"tool",include:["minecraft:damage"]}}} ~ ~ ~ mainhand
kill @s
