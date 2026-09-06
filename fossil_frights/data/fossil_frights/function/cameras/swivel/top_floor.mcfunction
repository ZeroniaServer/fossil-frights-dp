scoreboard players add @s ff_camera_swivel 1
execute if score @s ff_camera_swivel matches 1..50 run tp @s ~ ~ ~ ~-1.3 ~
execute if score @s ff_camera_swivel matches 71..170 run tp @s ~ ~ ~ ~1.3 ~
execute if score @s ff_camera_swivel matches 191..290 run tp @s ~ ~ ~ ~-1.3 ~
execute if score @s ff_camera_swivel matches 290 run scoreboard players set @s ff_camera_swivel 50
