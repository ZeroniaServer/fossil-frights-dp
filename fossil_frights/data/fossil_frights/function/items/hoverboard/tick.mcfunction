execute unless entity @e[type=minecraft:happy_ghast,tag=ff_hoverboard,limit=1] run return 0
tag @e[type=minecraft:happy_ghast,tag=ff_hoverboard] remove ff_hoverboard_keep
execute as @a[tag=ff_hoverboard_active] run function fossil_frights:items/hoverboard/owner_tick
execute as @e[type=minecraft:happy_ghast,tag=ff_hoverboard,tag=!ff_hoverboard_keep] run function fossil_frights:items/hoverboard/remove
execute as @a[tag=ff_hoverboard_back_rider] at @s unless predicate fossil_frights:entity/has_vehicle if entity @e[type=minecraft:happy_ghast,tag=ff_hoverboard,distance=..3,limit=1] run tp @s @e[type=minecraft:happy_ghast,tag=ff_hoverboard,distance=..3,sort=nearest,limit=1]
execute as @a[tag=ff_hoverboard_back_rider] unless predicate fossil_frights:entity/has_vehicle run tag @s remove ff_hoverboard_back_rider
