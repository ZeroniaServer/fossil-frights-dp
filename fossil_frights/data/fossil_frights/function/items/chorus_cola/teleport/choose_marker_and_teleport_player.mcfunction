$execute positioned as @e[limit=1,sort=random,type=minecraft:marker,tag=ff_chorus_cola_teleport_location,distance=$(min)..$(max)] run return run function fossil_frights:util/tp_here
execute positioned as @e[limit=1,sort=random,type=minecraft:marker,tag=ff_chorus_cola_teleport_location] run return run function fossil_frights:util/tp_here
tellraw @s {color:"red",text:"Teleport failed! No space was found nearby"}
