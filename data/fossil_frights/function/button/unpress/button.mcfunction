tag @s remove ff_button.pressed
data modify entity @s response set value true
scoreboard players reset @s ff_button_unpress_timestamp
playsound minecraft:block.wooden_button.click_off block @a[x=0] ~ ~ ~
function fossil_frights:button/set_block/unpressed with entity @s data.ff_button
