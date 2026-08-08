execute unless entity @s[type=minecraft:interaction,tag=ff_button] run return fail

tag @s remove ff_button.disabled

tag @s remove ff_button.pressed
data modify entity @s response set value true
scoreboard players reset @s ff_button_unpress_timestamp
function fossil_frights:interactions/button/set_block/unpressed with entity @s data.ff_button
