execute unless entity @s[type=minecraft:item] run return 0
execute on origin run tag @s[type=minecraft:player] add ff_return_all_but_one_to_thrower.thrower
execute unless entity @a[limit=1,tag=ff_return_all_but_one_to_thrower.thrower] run return 0
loot give @a[limit=1,tag=ff_return_all_but_one_to_thrower.thrower] loot {pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"contents"}}],functions:[{function:"minecraft:set_count",count:-1,add:true}]}]}
tag @a[tag=ff_return_all_but_one_to_thrower.thrower] remove ff_return_all_but_one_to_thrower.thrower
item modify entity @s contents {function:"minecraft:set_count",count:1}
