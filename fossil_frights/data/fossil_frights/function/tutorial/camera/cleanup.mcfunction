tag @s add ff_tutorial_camera_check
tag @s remove ff_tutorial_camera_has_owner
function fossil_frights:entity/match/active
execute if entity @a[limit=1,tag=ff_tutorial,predicate=fossil_frights:entity/match/active] run tag @e[type=minecraft:text_display,tag=ff_tutorial_camera_check,limit=1] add ff_tutorial_camera_has_owner
execute unless entity @s[tag=ff_tutorial_camera_has_owner] run kill @s
tag @s remove ff_tutorial_camera_check
