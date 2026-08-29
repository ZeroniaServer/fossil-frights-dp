scoreboard players add @s ff_trap_item_age 1
execute if score @s ff_trap_item_age matches 20 run data modify entity @e[type=minecraft:item_display,tag=ff_trap_freeze_item,distance=..1,sort=nearest,limit=1] Glowing set value false
tp @e[type=minecraft:item_display,tag=ff_trap_freeze_item,distance=..1,sort=nearest,limit=1] ~ ~0.375 ~
tp @e[type=minecraft:block_display,tag=ff_trap_freeze_item_ice,distance=..1,sort=nearest,limit=1] ~ ~0.375 ~
execute if score @s ff_trap_item_age matches 1..29 run particle minecraft:snowflake ~ ~0.25 ~ 0.22 0.22 0.22 0.015 2 force
execute if score @s ff_trap_item_age matches 1..29 run particle minecraft:white_ash ~ ~0.2 ~ 0.18 0.18 0.18 0.02 1 force
execute if score @s ff_trap_item_age matches 10 run data merge entity @e[type=minecraft:block_display,tag=ff_trap_freeze_item_ice,distance=..1,sort=nearest,limit=1] {block_state:{Name:"minecraft:frosted_ice",Properties:{age:"1"}}}
execute if score @s ff_trap_item_age matches 20 run data merge entity @e[type=minecraft:block_display,tag=ff_trap_freeze_item_ice,distance=..1,sort=nearest,limit=1] {block_state:{Name:"minecraft:frosted_ice",Properties:{age:"2"}}}
execute if score @s ff_trap_item_age matches 30.. run function fossil_frights:items/heists/trap/types/freeze/item/break
