summon minecraft:armor_stand ~ ~ ~ {Tags:["ff_trap_freeze_item_anchor","ff_trap_freeze_item_anchor_new"],Invisible:true,Small:true,NoGravity:false,Invulnerable:true,Silent:true}
data modify entity @e[type=minecraft:armor_stand,tag=ff_trap_freeze_item_anchor_new,sort=nearest,limit=1,distance=..0.5] equipment.feet set from entity @s Item
tag @e[type=minecraft:armor_stand,tag=ff_trap_freeze_item_anchor_new,sort=nearest,limit=1,distance=..0.5] remove ff_trap_freeze_item_anchor_new

execute positioned ~ ~0.375 ~ facing entity @e[limit=1,sort=random] feet rotated ~ 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:contents_slot",nbt:{Tags:["ff_trap_freeze_item"],Glowing:true,item_display:"ground",teleport_duration:1,interpolation_duration:1}}

summon minecraft:block_display ~ ~ ~ {Tags:["ff_trap_freeze_item_ice"],block_state:"minecraft:frosted_ice",teleport_duration:1,start_interpolation:0,interpolation_duration:2,transformation:{right_rotation:[0,0,0,1],scale:[0.75,0.75,0.75],left_rotation:[0,0,0,1],translation:[-0.375,0,-0.375]},width:0.75,height:0.75}

particle minecraft:snowflake ~ ~0.3 ~ 0.55 0.4 0.55 0.04 60 force
particle minecraft:white_ash ~ ~0.5 ~ 0.5 0.5 0.5 0.05 25 force
particle minecraft:block_crumble{block_state:"minecraft:frosted_ice"} ~ ~ ~ 0.4 0.4 0.4 0.08 20 force
playsound minecraft:block.glass.place player @a[distance=..15] ~ ~ ~ 0.9 1.25
playsound minecraft:entity.snowball.throw player @a[distance=..15] ~ ~ ~ 1.0 1.2
kill @s
