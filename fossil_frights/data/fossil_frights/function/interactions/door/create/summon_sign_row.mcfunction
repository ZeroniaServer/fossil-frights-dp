$summon minecraft:interaction ^0.375 ^ ^-0.46875 $(entity_data)
execute positioned ^0.375 ^ ^-0.46875 run tag @e[distance=..0.01,type=interaction,tag=ff_door.new] add ff_door.part_0
$summon minecraft:interaction ^0.125 ^ ^-0.46875 $(entity_data)
execute positioned ^0.125 ^ ^-0.46875 run tag @e[distance=..0.01,type=interaction,tag=ff_door.new] add ff_door.part_1
$summon minecraft:interaction ^-0.125 ^ ^-0.46875 $(entity_data)
execute positioned ^-0.125 ^ ^-0.46875 run tag @e[distance=..0.01,type=interaction,tag=ff_door.new] add ff_door.part_2
$summon minecraft:interaction ^-0.375 ^ ^-0.46875 $(entity_data)
execute positioned ^-0.375 ^ ^-0.46875 run tag @e[distance=..0.01,type=interaction,tag=ff_door.new] add ff_door.part_3
