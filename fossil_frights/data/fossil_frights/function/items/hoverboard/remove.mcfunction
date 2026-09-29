attribute @s minecraft:flying_speed modifier remove fossil_frights:hoverboard_sprint
attribute @s minecraft:flying_speed base reset
execute on passengers on passengers if entity @s[type=minecraft:player] run tp @s @e[type=minecraft:happy_ghast,tag=ff_hoverboard,distance=..3,sort=nearest,limit=1]
execute on passengers run kill @s[type=minecraft:item_display,tag=ff_hoverboard_display]
execute on passengers run ride @s dismount
tp @s[type=minecraft:happy_ghast,tag=ff_hoverboard] ~ -64 ~
kill @s[type=minecraft:happy_ghast,tag=ff_hoverboard]
