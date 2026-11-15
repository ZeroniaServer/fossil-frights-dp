tag @s remove ff_hoverboard_restore_pending
execute unless items entity @s enderchest.0 *[custom_data~{ff_hoverboard:{}}] run return 0
item fill entity @s fossil_frights:player/filtered/hoverboard_use_remainder from entity @s enderchest.0
item replace entity @s enderchest.0 with air
