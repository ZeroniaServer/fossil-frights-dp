posteffect remove @s fossil_frights:camera
posteffect remove @s fossil_frights:camera_shattered
execute if entity @s[tag=ff_spider_fright_shader_active] run posteffect add @s fossil_frights:camera_shattered
execute unless entity @s[tag=ff_spider_fright_shader_active] run posteffect add @s fossil_frights:camera
