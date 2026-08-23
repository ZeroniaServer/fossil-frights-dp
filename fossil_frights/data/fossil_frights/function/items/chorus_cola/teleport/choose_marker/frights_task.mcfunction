# Teleport near the nearest Frights task particle marker.
execute if entity @e[type=minecraft:armor_stand,tag=ff_task_compass_target,sort=nearest,limit=1] positioned as @e[type=minecraft:armor_stand,tag=ff_task_compass_target,sort=nearest,limit=1] positioned as @e[type=minecraft:marker,tag=ff_chorus_cola_teleport_location,sort=nearest,limit=1] run return run function fossil_frights:items/chorus_cola/teleport/teleport_player
return run function fossil_frights:items/chorus_cola/teleport/choose_marker/nearest
