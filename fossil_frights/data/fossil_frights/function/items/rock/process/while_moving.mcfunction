execute unless score @s ff_rock_button_press_delay matches 0.. run scoreboard players set @s ff_rock_button_press_delay 0
execute if score @s ff_rock_button_press_delay matches 0 positioned ~ ~0.25 ~ unless entity @e[limit=1,distance=..1.5,type=minecraft:interaction,tag=ff_button,tag=!ff_button.pressed] run scoreboard players reset @s ff_rock_button_press_delay
execute if score @s ff_rock_button_press_delay matches 0 positioned ~ ~0.25 ~ facing entity @n[type=minecraft:interaction,tag=ff_button,tag=!ff_button.pressed] feet unless function fossil_frights:items/rock/process/button/check run scoreboard players reset @s ff_rock_button_press_delay
execute if score @s ff_rock_button_press_delay matches 0 on vehicle on vehicle run attribute @s minecraft:bounciness base set 0
execute if score @s ff_rock_button_press_delay matches 0 on vehicle on vehicle run attribute @s minecraft:air_drag_modifier base set 2
execute if score @s ff_rock_button_press_delay matches 0.. run scoreboard players add @s ff_rock_button_press_delay 1
execute if score @s ff_rock_button_press_delay matches 5.. run function fossil_frights:items/rock/process/button/press_nearest
