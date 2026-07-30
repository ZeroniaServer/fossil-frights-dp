tag @s add ff_chorus_cola_teleport_location
ride @s dismount
$execute positioned ~$(x) ~$(y) ~$(z) run function fossil_frights:items/chorus_cola/teleport/tp_here
execute if data storage fossil_frights:chorus_cola calc.passengers[-1].tag run function fossil_frights:items/chorus_cola/teleport/set_marker_tag with storage fossil_frights:chorus_cola calc.passengers[-1].data
