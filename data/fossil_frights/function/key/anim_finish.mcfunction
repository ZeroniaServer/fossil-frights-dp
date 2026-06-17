particle minecraft:poof ~ ~ ~ 0.08 0.08 0.08 0.02 8 force
execute if items entity @s contents *[container~{items:{size:{min:1}}}] run summon minecraft:item ~ ~ ~ {Tags:["ff_key_anim_pop"],PickupDelay:0,Item:{id:"minecraft:stone",components:{"minecraft:item_model":"minecraft:air"}}}
execute if items entity @s contents *[container~{items:{size:{min:1}}}] run data modify entity @e[type=minecraft:item,tag=ff_key_anim_pop,sort=nearest,limit=1,distance=..0.1] Item set from entity @s item.components."minecraft:container"[0].item
# When updating to latest, replace the above line with this:
#execute if items entity @s contents *[container~{items:{size:{min:1}}}] run loot replace entity @e[type=minecraft:item,tag=ff_key_anim_pop,sort=nearest,limit=1,distance=..0.1] contents loot {pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",source:"this",slots:"contents"},component:"minecraft:container"}}]}]}
execute if entity @e[type=minecraft:item,tag=ff_key_anim_pop,sort=nearest,limit=1,distance=..0.1] run data merge entity @e[type=minecraft:item,tag=ff_key_anim_pop,sort=nearest,limit=1,distance=..0.1] {Motion:[0.0,0.12,0.0]}
kill @s
