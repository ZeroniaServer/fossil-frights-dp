execute as @e[type=minecraft:happy_ghast,tag=ff_hoverboard] run function fossil_frights:items/hoverboard/remove
kill @e[type=minecraft:item_display,tag=ff_hoverboard]
kill @e[type=minecraft:item_display,tag=ff_hoverboard_display]
tag @a remove ff_hoverboard_active
execute as @a[tag=ff_hoverboard_sprinting] run function fossil_frights:items/hoverboard/sprint/disable
execute as @a[tag=ff_hoverboard_speed_boost] run effect clear @s minecraft:speed
tag @a remove ff_hoverboard_speed_boost
