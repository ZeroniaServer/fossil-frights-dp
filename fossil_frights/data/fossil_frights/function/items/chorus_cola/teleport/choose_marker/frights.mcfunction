# Teleport to closest location to the nearest Frights task marker.
execute positioned as @n[type=minecraft:armor_stand,tag=ff_task_compass_target] positioned as @n[type=minecraft:marker,tag=ff_chorus_cola_teleport_location] run return run function fossil_frights:items/chorus_cola/teleport/teleport_player
return run function fossil_frights:items/chorus_cola/teleport/choose_marker/random
