execute unless entity @e[type=minecraft:happy_ghast,tag=ff_hoverboard,limit=1] run return 0
tag @e[type=minecraft:happy_ghast,tag=ff_hoverboard] remove ff_hoverboard_keep
execute as @a[tag=ff_hoverboard_active] run function fossil_frights:items/hoverboard/owner_tick
execute as @e[type=minecraft:happy_ghast,tag=ff_hoverboard,tag=!ff_hoverboard_keep] run function fossil_frights:items/hoverboard/remove
