scoreboard players set #sign_mounted ff_dummy 1
execute positioned ^ ^ ^-1 positioned ~ ~0.5 ~ unless block ~ ~ ~ #minecraft:signs unless block ~ ~1 ~ #minecraft:signs run scoreboard players set #sign_mounted ff_dummy 0

execute if score #sign_mounted ff_dummy matches 0 run data modify entity @s[tag=ff_door.sign_is_mounted] width set value 0.252
execute if score #sign_mounted ff_dummy matches 0 run tag @s remove ff_door.sign_is_mounted
execute if score #sign_mounted ff_dummy matches 0 run tp @s[tag=ff_door.part_0] ^0.375 ^ ^-0.40625
execute if score #sign_mounted ff_dummy matches 0 run tp @s[tag=ff_door.part_1] ^0.125 ^ ^-0.40625
execute if score #sign_mounted ff_dummy matches 0 run tp @s[tag=ff_door.part_2] ^-0.125 ^ ^-0.40625
execute if score #sign_mounted ff_dummy matches 0 run tp @s[tag=ff_door.part_3] ^-0.375 ^ ^-0.40625

execute if score #sign_mounted ff_dummy matches 1 run data modify entity @s[tag=!ff_door.sign_is_mounted] width set value 0.34575
execute if score #sign_mounted ff_dummy matches 1 run tag @s add ff_door.sign_is_mounted
execute if score #sign_mounted ff_dummy matches 1 run tp @s[tag=ff_door.part_0] ^0.333 ^ ^-0.46875
execute if score #sign_mounted ff_dummy matches 1 run tp @s[tag=ff_door.part_1] ^0.0 ^ ^-0.46875
execute if score #sign_mounted ff_dummy matches 1 run tp @s[tag=ff_door.part_2] ^-0.333 ^ ^-0.46875
execute if score #sign_mounted ff_dummy matches 1 run tp @s[tag=ff_door.part_3] ^-0.0 ^ ^-0.46875
