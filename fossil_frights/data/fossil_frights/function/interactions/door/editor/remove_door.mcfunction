execute on passengers run kill @s[type=minecraft:text_display,tag=ff_door.sign_text]
execute at @s align xyz as @e[dx=0,type=minecraft:interaction,tag=ff_door.interaction] positioned ~0.5 ~0.5 ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},y:{max:0.5},z:{max:0.5}}}} run kill @s
kill @s
execute at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air strict
