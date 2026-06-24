execute unless entity @s[type=minecraft:interaction,tag=ff_button] run return fail

tag @s add ff_button.disabled

tag @s remove ff_button.pressed
data modify entity @s response set value false
scoreboard players reset @s ff_button_unpress_timestamp
function fossil_frights:button/set_block/pressed with entity @s data.ff_button
