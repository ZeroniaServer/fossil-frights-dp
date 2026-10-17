tag @s remove ff_spider_fright_active
tag @s remove ff_spider_fright_shader_active
scoreboard players set @s ff_spider_fright_delay 0
kill @e[type=minecraft:item_display,tag=ff_spider_fright]
function fossil_frights:cameras/reapply_posteffect
