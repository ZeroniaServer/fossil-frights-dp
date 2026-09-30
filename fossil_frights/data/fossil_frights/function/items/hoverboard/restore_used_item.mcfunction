tag @s remove ff_hoverboard_restore_pending
execute unless items entity @s enderchest.0 *[custom_data~{itemID:"hoverboard"}] run return 0
item override entity @s fossil_frights:player/filtered/hoverboard_use from entity @s enderchest.0
item override entity @s enderchest.0 with air
