scoreboard players remove @s ff_glowtrap_age 1
execute unless score @s ff_glowtrap_age matches 1.. run data merge entity @s {Glowing:0b}
execute unless score @s ff_glowtrap_age matches 1.. run scoreboard players reset @s ff_glowtrap_age
