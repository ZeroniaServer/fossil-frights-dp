execute unless function fossil_frights:door/click/check run return 0
execute unless entity @s[tag=ff_door.disabled] unless entity @s[tag=ff_door.pressed] run function fossil_frights:door/click/toggle_door
data remove entity @s interaction
