execute unless function fossil_frights:interactions/button/interact/check run return 0
execute unless entity @s[tag=ff_button.disabled] unless entity @s[tag=ff_button.pressed] run function fossil_frights:interactions/button/interact/press
data remove entity @s interaction
