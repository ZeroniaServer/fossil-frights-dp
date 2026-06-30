scoreboard players set #sign_mounted ff_dummy 1
execute positioned ^ ^ ^-1 positioned ~ ~0.5 ~ unless block ~ ~ ~ #minecraft:signs unless block ~ ~1 ~ #minecraft:signs run scoreboard players set #sign_mounted ff_dummy 0

execute if score #sign_mounted ff_dummy matches 0 run data modify entity @s width set value 0.252
execute if score #sign_mounted ff_dummy matches 0 run execute if entity @s[tag=ff_door.part_0] run tp @s ^0.375 ^ ^-0.40625
execute if score #sign_mounted ff_dummy matches 0 run execute if entity @s[tag=ff_door.part_1] run tp @s ^0.125 ^ ^-0.40625
execute if score #sign_mounted ff_dummy matches 0 run execute if entity @s[tag=ff_door.part_2] run tp @s ^-0.125 ^ ^-0.40625
execute if score #sign_mounted ff_dummy matches 0 run execute if entity @s[tag=ff_door.part_3] run tp @s ^-0.375 ^ ^-0.40625

execute if score #sign_mounted ff_dummy matches 1 run data modify entity @s width set value 0.34575
execute if score #sign_mounted ff_dummy matches 1 run execute if entity @s[tag=ff_door.part_0] run tp @s ^0.333 ^ ^-0.46875
execute if score #sign_mounted ff_dummy matches 1 run execute if entity @s[tag=ff_door.part_1] run tp @s ^0.0 ^ ^-0.46875
execute if score #sign_mounted ff_dummy matches 1 run execute if entity @s[tag=ff_door.part_2] run tp @s ^-0.333 ^ ^-0.46875
execute if score #sign_mounted ff_dummy matches 1 run execute if entity @s[tag=ff_door.part_3] run tp @s ^-0.0 ^ ^-0.46875
