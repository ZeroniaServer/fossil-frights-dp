scoreboard players add @s ff_camera_swivel 1
execute if score @s ff_camera_swivel matches 1..11 run tp @s ~ ~ ~ ~0.95 ~
execute if score @s ff_camera_swivel matches 11 run tp @s ~ ~ ~ ~-0.47850341796875 ~
execute if score @s ff_camera_swivel matches 32..131 run tp @s ~ ~ ~ ~-0.95 ~
execute if score @s ff_camera_swivel matches 152..251 run tp @s ~ ~ ~ ~0.95 ~
execute if score @s ff_camera_swivel matches 251 run scoreboard players set @s ff_camera_swivel 11
