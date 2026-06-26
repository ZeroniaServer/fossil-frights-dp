execute positioned ~ ~ ~-1 align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0
execute positioned ~ ~ ~1 align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0
execute positioned ~-1 ~ ~ align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0
execute positioned ~1 ~ ~ align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0

execute if block ~ ~ ~ #doors[hinge=right] positioned ^1 ^0.5 ^ if block ~ ~ ~ #doors[hinge=left] positioned ~ ~ ~-1 align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0
execute if block ~ ~ ~ #doors[hinge=right] positioned ^1 ^0.5 ^ if block ~ ~ ~ #doors[hinge=left] positioned ~ ~ ~1 align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0
execute if block ~ ~ ~ #doors[hinge=right] positioned ^1 ^0.5 ^ if block ~ ~ ~ #doors[hinge=left] positioned ~-1 ~ ~ align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0
execute if block ~ ~ ~ #doors[hinge=right] positioned ^1 ^0.5 ^ if block ~ ~ ~ #doors[hinge=left] positioned ~1 ~ ~ align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0

execute if block ~ ~ ~ #doors[hinge=left] positioned ^-1 ^0.5 ^ if block ~ ~ ~ #doors[hinge=right] positioned ~ ~ ~-1 align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0
execute if block ~ ~ ~ #doors[hinge=left] positioned ^-1 ^0.5 ^ if block ~ ~ ~ #doors[hinge=right] positioned ~ ~ ~1 align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0
execute if block ~ ~ ~ #doors[hinge=left] positioned ^-1 ^0.5 ^ if block ~ ~ ~ #doors[hinge=right] positioned ~-1 ~ ~ align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0
execute if block ~ ~ ~ #doors[hinge=left] positioned ^-1 ^0.5 ^ if block ~ ~ ~ #doors[hinge=right] positioned ~1 ~ ~ align xyz if entity @e[limit=1,distance=..0.001,type=block_display,tag=ff_fake_pressure_plate.pressed] run return 0

return 1
