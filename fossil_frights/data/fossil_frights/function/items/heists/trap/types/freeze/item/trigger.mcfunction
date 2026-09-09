summon minecraft:armor_stand ~ ~ ~ {Tags:["ff_trap_freeze_item_anchor","ff_trap_freeze_item_anchor_new"],Invisible:true,Small:true,NoGravity:false,Invulnerable:true,Silent:true,PersistenceRequired:true}
summon minecraft:item_display ~ ~0.375 ~ {Tags:["ff_trap_freeze_item","ff_trap_freeze_item_new"],Glowing:true,item:{id:"minecraft:stone",count:1},item_display:"ground",teleport_duration:1,interpolation_duration:1}
data modify entity @e[type=minecraft:item_display,tag=ff_trap_freeze_item_new,sort=nearest,limit=1,distance=..0.5] item set from entity @s Item
tag @e[type=minecraft:item_display,tag=ff_trap_freeze_item_new,sort=nearest,limit=1,distance=..0.5] remove ff_trap_freeze_item_new
summon minecraft:block_display ~ ~ ~ {Tags:["ff_trap_freeze_item_ice","ff_trap_freeze_item_ice_new"],block_state:{Name:"minecraft:frosted_ice",Properties:{age:"0"}},teleport_duration:1,start_interpolation:0,interpolation_duration:2,transformation:{right_rotation:[0,0,0,1],scale:[0.75,0.75,0.75],left_rotation:[0,0,0,1],translation:[-0.375,0,-0.375]},width:0.75,height:0.75}
tag @e[type=minecraft:block_display,tag=ff_trap_freeze_item_ice_new,sort=nearest,limit=1,distance=..0.5] remove ff_trap_freeze_item_ice_new
scoreboard players set @e[type=minecraft:armor_stand,tag=ff_trap_freeze_item_anchor_new,sort=nearest,limit=1,distance=..0.5] ff_trap_item_age 0
tag @e[type=minecraft:armor_stand,tag=ff_trap_freeze_item_anchor_new,sort=nearest,limit=1,distance=..0.5] remove ff_trap_freeze_item_anchor_new
particle minecraft:snowflake ~ ~0.3 ~ 0.55 0.4 0.55 0.04 60 force
particle minecraft:white_ash ~ ~0.5 ~ 0.5 0.5 0.5 0.05 25 force
particle minecraft:block_crumble{block_state:"minecraft:frosted_ice"} ~ ~ ~ 0.4 0.4 0.4 0.08 20 force
playsound minecraft:block.glass.place player @a[distance=..15] ~ ~ ~ 0.9 1.25
playsound minecraft:entity.snowball.throw player @a[distance=..15] ~ ~ ~ 1.0 1.2
kill @s
