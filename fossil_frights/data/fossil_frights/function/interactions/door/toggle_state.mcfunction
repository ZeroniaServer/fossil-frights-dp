execute at @s if block ~ ~ ~ #doors[open=false] run return run function fossil_frights:interactions/door/state/open with entity @s data.ff_door
execute at @s run return run function fossil_frights:interactions/door/state/closed with entity @s data.ff_door
