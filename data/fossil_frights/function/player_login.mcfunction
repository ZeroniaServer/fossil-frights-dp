execute if entity @s[team=ff_dev_mode] run return 0
team leave @s
tag @s remove ff_active
clear @s
item replace entity @s armor.head with air
tp @s 0 80 0 0 0
spawnpoint @s 0 80 0
gamemode adventure @s
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
effect give @s minecraft:instant_health 100 0 true
