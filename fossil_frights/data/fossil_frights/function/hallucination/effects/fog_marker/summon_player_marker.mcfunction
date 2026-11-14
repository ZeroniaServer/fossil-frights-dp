execute at @s positioned ~ 0 ~ run summon minecraft:item_display ~ ~ ~ {Tags:["fog_marker","ff_hallucination_fog_marker","ff_hallucination_fog_marker_new"],item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"d_shader_utils:shader/fog_marker"}},view_range:10000f,Glowing:true,glow_color_override:0x102000}
execute at @s positioned ~ 0 ~ run scoreboard players operation @e[type=minecraft:item_display,tag=ff_hallucination_fog_marker_new,limit=1] ff_active_uuid_0 = @s ff_active_uuid_0
execute at @s positioned ~ 0 ~ run scoreboard players operation @e[type=minecraft:item_display,tag=ff_hallucination_fog_marker_new,limit=1] ff_active_uuid_1 = @s ff_active_uuid_1
execute at @s positioned ~ 0 ~ run scoreboard players operation @e[type=minecraft:item_display,tag=ff_hallucination_fog_marker_new,limit=1] ff_active_uuid_2 = @s ff_active_uuid_2
execute at @s positioned ~ 0 ~ run scoreboard players operation @e[type=minecraft:item_display,tag=ff_hallucination_fog_marker_new,limit=1] ff_active_uuid_3 = @s ff_active_uuid_3
tag @e[type=minecraft:item_display,tag=ff_hallucination_fog_marker_new,limit=1] remove ff_hallucination_fog_marker_new
