clear @s
item replace entity @s armor.head with air
attribute @s minecraft:scale base set 1
stopsound @s master fossil-frights:ff_night_shift
function fossil_frights:util/fade/queue/spectator_exit
spawnpoint @s 0 80 0
gamemode adventure @s
function fossil_frights:player/protection_enable
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
effect give @s minecraft:instant_health 100 0 true
