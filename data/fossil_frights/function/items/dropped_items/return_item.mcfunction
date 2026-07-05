execute on origin run tag @s[type=minecraft:player] add ff_dropped_items.return_items.player
loot give @a[limit=1,tag=ff_dropped_items.return_items.player] loot {pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"contents"}}]}]}
execute on origin run tag @s remove ff_dropped_items.return_items.player
kill @s
