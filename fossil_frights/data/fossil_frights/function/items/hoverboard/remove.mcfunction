attribute @s minecraft:flying_speed modifier remove fossil_frights:hoverboard_sprint
execute on passengers run ride @s dismount
tp @s[type=minecraft:happy_ghast,tag=ff_hoverboard] ~ -64 ~
kill @s[type=minecraft:happy_ghast,tag=ff_hoverboard]
