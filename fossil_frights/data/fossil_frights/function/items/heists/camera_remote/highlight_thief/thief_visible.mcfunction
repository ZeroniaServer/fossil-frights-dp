execute store result score .origin0 ff_dummy run data get entity @s Rotation[0] 1
execute store result score .origin1 ff_dummy run data get entity @s Rotation[1] 1
scoreboard players operation .origin0 ff_dummy %= #360 ff_constant
scoreboard players operation .origin1 ff_dummy %= #180 ff_constant

execute summon minecraft:marker run function fossil_frights:items/heists/camera_remote/highlight_thief/thief_location

scoreboard players operation .degree0 ff_dummy -= .origin0 ff_dummy
scoreboard players operation .degree0 ff_dummy %= #360 ff_constant
execute unless score .degree0 ff_dummy matches 125..235 run return fail

scoreboard players add .degree1 ff_dummy 90
scoreboard players operation .degree1 ff_dummy += .origin1 ff_dummy
scoreboard players operation .degree1 ff_dummy %= #180 ff_constant
execute unless score .degree1 ff_dummy matches 55..125 run return fail

return 1
