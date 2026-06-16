tag @s remove ff_button.pressed
data modify entity @s response set value true
scoreboard players reset @s ff_button_unpress_timestamp
playsound minecraft:block.wooden_button.click_off block @a[x=0] ~ ~ ~

$setblock ~ ~ ~ $(block_type)[face=$(block_face),facing=$(block_facing),powered=false] strict
