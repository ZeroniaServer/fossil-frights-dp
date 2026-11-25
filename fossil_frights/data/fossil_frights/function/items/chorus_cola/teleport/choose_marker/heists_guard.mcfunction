# Teleport to the dinonog bar if the dinonog meter is empty
execute unless predicate fossil_frights:location/room/basement/dinonog_bar if score #dinonog_bar ff_dinonog matches ..0 positioned as @e[limit=1,sort=random,type=minecraft:marker,tag=ff_chorus_cola_teleport_location,predicate=fossil_frights:location/room/basement/dinonog_bar] run return run function fossil_frights:items/chorus_cola/teleport/teleport_player

execute positioned as @e[limit=1,sort=nearest,distance=5..,type=minecraft:marker,tag=ff_chorus_cola_teleport_location] run return run function fossil_frights:items/chorus_cola/teleport/teleport_player
