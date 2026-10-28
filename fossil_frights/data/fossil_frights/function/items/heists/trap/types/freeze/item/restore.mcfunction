execute if data entity @s data.ff_trap_freeze_item_stack run summon minecraft:item ~ ~0.25 ~ {Tags:["ff_trap_freeze_item_restore"],PickupDelay:0,Age:0,Motion:[0.0d,0.0d,0.0d],Item:{id:"minecraft:stone",count:1}}
execute if data entity @s data.ff_trap_freeze_item_stack run data modify entity @e[type=minecraft:item,tag=ff_trap_freeze_item_restore,sort=nearest,limit=1,distance=..0.75] Item set from entity @s data.ff_trap_freeze_item_stack
execute if data entity @s data.ff_trap_freeze_item_stack run tag @e[type=minecraft:item,tag=ff_trap_freeze_item_restore,sort=nearest,limit=1,distance=..0.75] remove ff_trap_freeze_item_restore
kill @e[type=minecraft:item_display,tag=ff_trap_freeze_item,sort=nearest,limit=1,distance=..0.75]
kill @e[type=minecraft:block_display,tag=ff_trap_freeze_item_ice,sort=nearest,limit=1,distance=..0.75]
kill @s
