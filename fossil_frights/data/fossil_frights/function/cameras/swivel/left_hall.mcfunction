scoreboard players add @s ff_camera_swivel 1
execute if score @s ff_camera_swivel matches 1..7 run tp @s ~ ~ ~ ~-1.59 ~
execute if score @s ff_camera_swivel matches 7 run tp @s ~ ~ ~ ~-0.106602783203125 ~
execute if score @s ff_camera_swivel matches 28..127 run tp @s ~ ~ ~ ~1.59 ~
execute if score @s ff_camera_swivel matches 148..247 run tp @s ~ ~ ~ ~-1.59 ~
execute if score @s ff_camera_swivel matches 247 run scoreboard players set @s ff_camera_swivel 7
