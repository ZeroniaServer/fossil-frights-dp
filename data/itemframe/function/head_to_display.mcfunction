tag @e[type=minecraft:armor_stand,tag=itemframe_head_source] remove itemframe_head_source
tag @e[type=minecraft:item_display,tag=itemframe_head_display_new] remove itemframe_head_display_new
tag @e[type=minecraft:armor_stand,sort=nearest,limit=1] add itemframe_head_source
execute unless entity @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1] run return 0
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1] unless items entity @s armor.head * unless data entity @s ArmorItems[3] run return 0
scoreboard players set #itemframe_body_yaw ff_lb_calc 0
scoreboard players set #itemframe_body_pitch ff_lb_calc 0
scoreboard players set #itemframe_head_yaw ff_lb_calc 0
scoreboard players set #itemframe_head_pitch ff_lb_calc 0
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1] store result score #itemframe_body_yaw ff_lb_calc run data get entity @s Rotation[0] 1
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1] store result score #itemframe_body_pitch ff_lb_calc run data get entity @s Rotation[1] 1
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1] store result score #itemframe_head_yaw ff_lb_calc run data get entity @s Pose.Head[1] 1
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1] store result score #itemframe_head_pitch ff_lb_calc run data get entity @s Pose.Head[0] 1
scoreboard players operation #itemframe_body_yaw ff_lb_calc += #itemframe_head_yaw ff_lb_calc
scoreboard players operation #itemframe_body_pitch ff_lb_calc += #itemframe_head_pitch ff_lb_calc
scoreboard players add #itemframe_body_yaw ff_lb_calc 180
data remove storage itemframe:head_display rot
execute store result storage itemframe:head_display rot.yaw float 1 run scoreboard players get #itemframe_body_yaw ff_lb_calc
execute store result storage itemframe:head_display rot.pitch float 1 run scoreboard players get #itemframe_body_pitch ff_lb_calc
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1,nbt={Small:1b}] at @s rotated as @s positioned ~ ~1.12 ~ run summon minecraft:item_display ~ ~ ~ {Tags:["itemframe_head_display_new"],item_display:"head",item:{id:"minecraft:stone",count:1}}
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1,nbt=!{Small:1b}] at @s rotated as @s positioned ~ ~1.84 ~ run summon minecraft:item_display ~ ~ ~ {Tags:["itemframe_head_display_new"],item_display:"head",item:{id:"minecraft:stone",count:1}}
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1] at @s if data entity @s equipment.head run data modify entity @e[type=minecraft:item_display,tag=itemframe_head_display_new,sort=nearest,limit=1,distance=..5] item set from entity @s equipment.head
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1] at @s unless data entity @s equipment.head run data modify entity @e[type=minecraft:item_display,tag=itemframe_head_display_new,sort=nearest,limit=1,distance=..5] item set from entity @s ArmorItems[3]
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1] at @s run data merge entity @e[type=minecraft:item_display,tag=itemframe_head_display_new,sort=nearest,limit=1,distance=..5] {Glowing:1b,transformation:{right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1,nbt={Small:1b}] at @s run data merge entity @e[type=minecraft:item_display,tag=itemframe_head_display_new,sort=nearest,limit=1,distance=..5] {transformation:{right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1] at @s run function itemframe:head_to_display_apply_rotation with storage itemframe:head_display rot
execute as @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1] at @s run tag @e[type=minecraft:item_display,tag=itemframe_head_display_new,sort=nearest,limit=1,distance=..5] add itemframe_glow_pending
schedule function itemframe:clear_glow 10t replace
kill @e[type=minecraft:armor_stand,tag=itemframe_head_source,limit=1]
tag @e[type=minecraft:item_display,tag=itemframe_head_display_new] remove itemframe_head_display_new
