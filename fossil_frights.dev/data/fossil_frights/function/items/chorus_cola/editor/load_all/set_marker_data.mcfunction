tag @s add ff_chorus_cola_indicator
ride @s dismount
$execute positioned ~$(x) ~$(y) ~$(z) run function fossil_frights:items/chorus_cola/teleport/tp_here
#execute if data storage fossil_frights:chorus_cola calc.passengers[-1].tag run data modify entity @s data.ff_chorus_cola_indicator.tag set string storage fossil_frights:chorus_cola calc.passengers[-1].tag
