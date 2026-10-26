data modify storage fossil_frights:rock interaction set value {player:[I;0,0,0,0],timestamp:0L}
execute store result storage fossil_frights:rock interaction.player[0] int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:rock interaction.player[1] int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:rock interaction.player[2] int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:rock interaction.player[3] int 1 run scoreboard players get @s ff_active_uuid_3
execute positioned as @n[type=minecraft:interaction,tag=ff_button,tag=!ff_button.pressed] run function fossil_frights:items/rock/break
data modify entity @n[type=minecraft:interaction,tag=ff_button,tag=!ff_button.pressed] interaction set from storage fossil_frights:rock interaction
#data remove storage fossil_frights:rock interaction
execute as @n[type=minecraft:interaction,tag=ff_button,tag=!ff_button.pressed] at @s run function fossil_frights:interactions/button/interact/press
