playsound minecraft:block.wooden_button.click_on block @a[x=0] ~ ~ ~
tag @s add ff_button.pressed
data modify entity @s response set value false
execute store result score @s ff_button_unpress_timestamp run time query gametime
function fossil_frights:interactions/button/set_block/pressed with entity @s data.ff_button
execute unless block ~ ~ ~ #minecraft:stone_buttons run scoreboard players add @s ff_button_unpress_timestamp 30
execute unless block ~ ~ ~ #minecraft:stone_buttons run schedule function fossil_frights:interactions/button/unpress 30t append
execute if block ~ ~ ~ #minecraft:stone_buttons run scoreboard players add @s ff_button_unpress_timestamp 20
execute if block ~ ~ ~ #minecraft:stone_buttons run schedule function fossil_frights:interactions/button/unpress 20t append

execute align xyz positioned ~0.5 ~ ~0.5 on target run function fossil_frights:interactions/button/interact/run_function with entity @s data.ff_button
