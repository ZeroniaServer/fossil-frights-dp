execute store result score #gametime ff_button_unpress_timestamp run time query gametime
execute as @e[type=block_display,tag=ff_fake_pressure_plate,tag=ff_fake_pressure_plate.pressed] if score @s ff_button_unpress_timestamp <= #gametime ff_button_unpress_timestamp at @s run function fossil_frights:interactions/door/fake_pressure_plate/unpress_entity
