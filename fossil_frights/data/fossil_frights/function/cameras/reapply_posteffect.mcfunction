posteffect remove @s fossil_frights:camera
posteffect remove @s fossil_frights:camera_shattered
execute if entity @s[tag=ff_spider_fright_shader_active] if score @s ff_security_camera matches 1 if entity @s[gamemode=spectator] run posteffect add @s fossil_frights:camera_shattered
execute unless entity @s[tag=ff_spider_fright_shader_active] run posteffect add @s fossil_frights:camera
execute if entity @s[tag=ff_spider_fright_shader_active] unless score @s ff_security_camera matches 1 run posteffect add @s fossil_frights:camera
execute if entity @s[tag=ff_spider_fright_shader_active] unless entity @s[gamemode=spectator] run posteffect add @s fossil_frights:camera
