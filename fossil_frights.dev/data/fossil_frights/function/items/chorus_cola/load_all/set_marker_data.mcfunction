tag @s add ff_chorus_cola_editor
ride @s dismount
$execute positioned ~$(x) ~$(y) ~$(z) run function fossil_frights:util/tp_here
execute if data storage fossil_frights:chorus_cola calc.passengers[-1].tag run data modify entity @s data.ff_chorus_cola_editor.tag set string storage fossil_frights:chorus_cola calc.passengers[-1].tag
