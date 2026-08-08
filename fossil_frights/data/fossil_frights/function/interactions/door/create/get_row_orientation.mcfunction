execute if block ~ ~ ~ #doors[open=false] run function fossil_frights:interactions/door/create/summon_row with storage fossil_frights:door
execute if block ~ ~ ~ #doors[open=true,hinge=left] rotated ~90 ~ run function fossil_frights:interactions/door/create/summon_row with storage fossil_frights:door
execute if block ~ ~ ~ #doors[open=true,hinge=right] rotated ~-90 ~ run function fossil_frights:interactions/door/create/summon_row with storage fossil_frights:door

execute align xyz as @e[dx=0,type=interaction,tag=ff_door.new] run rotate @s ~ ~
execute align xyz run tag @e[dx=0,type=interaction,tag=ff_door.new] remove ff_door.new
