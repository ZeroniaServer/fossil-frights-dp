# Teleport to the dinonog bar if a hallucination is active
execute if score #h_active_count ff_hallucination matches 1.. as @e[limit=1,sort=random,type=minecraft:marker,tag=ff_chorus_cola_teleport_location,predicate=fossil_frights:location/room/basement/dinonog_bar] run return run function fossil_frights:items/chorus_cola/teleport/teleport_player

execute positioned as @e[limit=1,sort=nearest,distance=5..,type=minecraft:marker,tag=ff_chorus_cola_teleport_location] run return run function fossil_frights:items/chorus_cola/teleport/teleport_player
