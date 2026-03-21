scoreboard players add @s ff_key_anim 1
execute if score @s ff_key_anim matches 1..8 as @s[tag=ff_key_anim_north] run tp @s ~ ~ ~0.015 ~ ~
execute if score @s ff_key_anim matches 1..8 as @s[tag=ff_key_anim_south] run tp @s ~ ~ ~-0.015 ~ ~
execute if score @s ff_key_anim matches 1..8 as @s[tag=ff_key_anim_west] run tp @s ~0.015 ~ ~ ~ ~
execute if score @s ff_key_anim matches 1..8 as @s[tag=ff_key_anim_east] run tp @s ~-0.015 ~ ~ ~ ~
execute if score @s ff_key_anim matches 9 run data merge entity @s {transformation:{left_rotation:[0.7933533f,0f,0f,0.6087614f]}}
execute if score @s ff_key_anim matches 10 run data merge entity @s {transformation:{left_rotation:[0.8660254f,0f,0f,0.5000000f]}}
execute if score @s ff_key_anim matches 11 run data merge entity @s {transformation:{left_rotation:[0.9238795f,0f,0f,0.3826834f]}}
execute if score @s ff_key_anim matches 12 run data merge entity @s {transformation:{left_rotation:[0.9659258f,0f,0f,0.2588190f]}}
execute if score @s ff_key_anim matches 13 run data merge entity @s {transformation:{left_rotation:[0.9914449f,0f,0f,0.1305262f]}}
execute if score @s ff_key_anim matches 14 run data merge entity @s {transformation:{left_rotation:[1f,0f,0f,0f]}}
execute if score @s ff_key_anim matches 15 run data merge entity @s {transformation:{left_rotation:[0.9914449f,0f,0f,0.1305262f]}}
execute if score @s ff_key_anim matches 16 run data merge entity @s {transformation:{left_rotation:[0.9659258f,0f,0f,0.2588190f]}}
execute if score @s ff_key_anim matches 17 run data merge entity @s {transformation:{left_rotation:[0.8660254f,0f,0f,0.5000000f]}}
execute if score @s ff_key_anim matches 18 run data merge entity @s {transformation:{left_rotation:[0.7071068f,0f,0f,0.7071068f]}}
execute if score @s ff_key_anim matches 19..26 as @s[tag=ff_key_anim_north] run tp @s ~ ~ ~-0.015 ~ ~
execute if score @s ff_key_anim matches 19..26 as @s[tag=ff_key_anim_south] run tp @s ~ ~ ~0.015 ~ ~
execute if score @s ff_key_anim matches 19..26 as @s[tag=ff_key_anim_west] run tp @s ~-0.015 ~ ~ ~ ~
execute if score @s ff_key_anim matches 19..26 as @s[tag=ff_key_anim_east] run tp @s ~0.015 ~ ~ ~ ~
execute if score @s ff_key_anim matches 27.. run kill @s
