tag @e[type=minecraft:text_display,tag=ff_tutorial_camera] remove ff_tutorial_camera_current
execute at @s run summon minecraft:text_display ~ ~ ~ {Tags:["ff_tutorial_camera","ff_tutorial_camera_current","ff_tutorial_camera_new"],teleport_duration:0,interpolation_duration:0,billboard:"fixed",text:"",text_opacity:0,background:0,see_through:true,width:3,height:1}
scoreboard players operation @e[type=minecraft:text_display,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=minecraft:text_display,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=minecraft:text_display,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=minecraft:text_display,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_3 = @s ff_active_uuid_3
tag @e[type=minecraft:text_display,tag=ff_tutorial_camera_new,limit=1,sort=nearest] remove ff_tutorial_camera_new
