execute unless entity @s[tag=ff_hoverboard_sprinting] run item modify entity @s fossil_frights:player/filtered/hoverboard_active fossil_frights:items/hoverboard/durability/damage
execute if entity @s[tag=ff_hoverboard_sprinting] run item modify entity @s fossil_frights:player/filtered/hoverboard_active fossil_frights:items/hoverboard/durability/damage_sprint
execute if items entity @s fossil_frights:player/filtered/hoverboard_active_broken * run function fossil_frights:items/hoverboard/durability/break
