execute as @e[type=minecraft:happy_ghast,tag=ff_hoverboard] run function fossil_frights:items/hoverboard/remove
tag @a remove ff_hoverboard_active
execute as @a[tag=ff_hoverboard_sprinting] run function fossil_frights:items/hoverboard/sprint/disable
