function fossil_frights:join/lobby
clear @s
item replace entity @s armor.head with air
attribute @s minecraft:scale base set 1
stopsound @s music fossil-frights:ff_night_shift
stopsound @s master fossil-frights:ff_night_shift
stopsound @s record fossil-frights:ff_night_shift
function fossil_frights:util/fade/queue/spectator_exit
spawnpoint @s 0 80 0
gamemode adventure @s
function fossil_frights:player/effects/lobby_reset
effect give @s minecraft:instant_health 100 0 true
