execute as @a[tag=ff_spider_fright_active,scores={ff_spider_fright_delay=1..}] run scoreboard players remove @s ff_spider_fright_delay 1
execute as @a[tag=ff_spider_fright_active,tag=!ff_spider_fright_shader_active,scores={ff_spider_fright_delay=..0}] run function fossil_frights:frights/spider/apply_posteffect
