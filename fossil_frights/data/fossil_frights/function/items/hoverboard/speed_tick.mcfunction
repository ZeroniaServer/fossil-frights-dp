#frozen: stop hoverboard
execute if entity @s[tag=ff_ice_frozen] on vehicle run attribute @s minecraft:flying_speed base set 0
execute if entity @s[tag=ff_ice_frozen] on vehicle run attribute @s minecraft:flying_speed modifier remove fossil_frights:hoverboard_sprint
execute if entity @s[tag=ff_ice_frozen] run tag @s remove ff_hoverboard_sprinting
execute if entity @s[tag=ff_ice_frozen] run attribute @s minecraft:movement_speed modifier remove fossil_frights:hoverboard_sprinting
execute if entity @s[tag=ff_ice_frozen] on vehicle run tag @s remove ff_hoverboard_sprinting
execute if entity @s[tag=ff_ice_frozen] run return 0

#heavy: slow hoverboard
execute store success score $holding_heavy ff_dummy if predicate fossil_frights:player/inventory/heavy_loot
execute if score $holding_heavy ff_dummy matches 1 on vehicle run attribute @s minecraft:flying_speed base set 0.04
execute if score $holding_heavy ff_dummy matches 1 on vehicle run attribute @s minecraft:flying_speed modifier remove fossil_frights:hoverboard_sprint
execute if score $holding_heavy ff_dummy matches 1 run tag @s remove ff_hoverboard_sprinting
execute if score $holding_heavy ff_dummy matches 1 run attribute @s minecraft:movement_speed modifier remove fossil_frights:hoverboard_sprinting
execute if score $holding_heavy ff_dummy matches 1 on vehicle run tag @s remove ff_hoverboard_sprinting

execute if score $holding_heavy ff_dummy matches 0 on vehicle run attribute @s minecraft:flying_speed base reset
