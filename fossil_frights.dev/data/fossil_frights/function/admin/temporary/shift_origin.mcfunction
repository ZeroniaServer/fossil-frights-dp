# shift entity up .5 and translate down .5
tag @e[type=#fossil_frights:display_entities,sort=nearest,limit=1] add ff_admin_shift_origin_target
execute as @e[tag=ff_admin_shift_origin_target] at @s run tp @s ~ ~-0.5 ~
execute as @e[tag=ff_admin_shift_origin_target] run data modify entity @s transformation.translation[1] set value 0.5f
tag @e[tag=ff_admin_shift_origin_target] remove ff_admin_shift_origin_target
