playsound minecraft:block.wooden_button.click_on block @a[x=0] ~ ~ ~
tag @s add ff_button.pressed
data modify entity @s response set value false
function fossil_frights:interactions/button/set_block/pressed with entity @s data.ff_button
execute unless block ~ ~ ~ #minecraft:stone_buttons run execute store result score @s ff_button_unpress_timestamp run compute default integer {type:"minecraft:add",inputs:["fossil_frights:gametime",30]}
execute unless block ~ ~ ~ #minecraft:stone_buttons run schedule function fossil_frights:interactions/button/unpress 30t append
execute if block ~ ~ ~ #minecraft:stone_buttons run execute store result score @s ff_button_unpress_timestamp run compute default integer {type:"minecraft:add",inputs:["fossil_frights:gametime",20]}
execute if block ~ ~ ~ #minecraft:stone_buttons run schedule function fossil_frights:interactions/button/unpress 20t append

function fossil_frights:interactions/button/interact/run_function with entity @s data.ff_button
