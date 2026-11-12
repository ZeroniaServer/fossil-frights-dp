particle minecraft:poof ~ ~ ~ 0.08 0.08 0.08 0.02 8 force
execute if predicate fossil_frights:game_state/heist_mode_active if items entity @s {type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",slots:"contents"},component:"minecraft:container"} *[custom_data~{itemID:"dinonog"}] run return run function fossil_frights:key/anim_finish_heist_dinonog

execute if items entity @s contents *[container~{items:{size:{min:1}}}] run summon minecraft:item ~ ~ ~ {Tags:["ff_key_anim_pop"],PickupDelay:0,Item:{id:"minecraft:stone",components:{"minecraft:item_model":"minecraft:air"}}}
execute if items entity @s contents *[container~{items:{size:{min:1}}}] run item replace entity @e[type=minecraft:item,tag=ff_key_anim_pop,sort=nearest,limit=1,distance=..0.1] contents from entity @s {type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",slots:"contents"},component:"minecraft:container"}
execute if items entity @s {type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",slots:"contents"},component:"minecraft:container"} *[custom_data~{itemID:"lady_bug"}] run function fossil_frights:items/lady_bug/trigger
execute if entity @e[type=minecraft:item,tag=ff_key_anim_pop,sort=nearest,limit=1,distance=..0.1] run data merge entity @e[type=minecraft:item,tag=ff_key_anim_pop,sort=nearest,limit=1,distance=..0.1] {Motion:[0.0,0.12,0.0]}
kill @s
