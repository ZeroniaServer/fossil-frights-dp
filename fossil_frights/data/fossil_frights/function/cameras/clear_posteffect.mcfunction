posteffect remove @s fossil_frights:camera
posteffect remove @s fossil_frights:camera_shattered
tag @s remove ff_camera_posteffect
tag @s remove ff_spider_fright_active
tag @s remove ff_spider_fright_shader_active
scoreboard players set @s ff_spider_fright_delay 0
kill @e[type=minecraft:item_display,tag=ff_spider_fright]
