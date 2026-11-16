item replace entity @s weapon.mainhand from entity @a[limit=1,tag=ff_replace_febreeze_rod.player] {type:"minecraft:limit_slots",slot_source:"fossil_frights:player/filtered/febreeze_rod",limit:1}
loot replace block 0 0 0 container.0 1 fish {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"fossil_frights:items/heists/guard_febreeze_rod"}]}],modifier:{type:"minecraft:filtered",item_filter:{predicates:{"minecraft:damage":{}}},on_pass:{type:"minecraft:copy_components",source:"tool",include:["minecraft:damage"]}}} ~ ~ ~ mainhand
kill @s
