execute store result score #gametime ff_button_unpress_timestamp run time query gametime
execute as @e[type=interaction,tag=ff_button,tag=ff_button.pressed] if score @s ff_button_unpress_timestamp <= #gametime ff_button_unpress_timestamp at @s run function fossil_frights:interactions/button/unpress/button
