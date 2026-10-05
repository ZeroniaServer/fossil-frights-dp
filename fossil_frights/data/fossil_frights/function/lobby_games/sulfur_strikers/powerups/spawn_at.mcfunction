particle minecraft:poof ~ ~3 ~ 0.25 0.25 0.25 0.08 18 force @a[distance=..32]
loot spawn ~ ~3 ~ loot fossil_frights:lobby_games/sulfur_strikers/powerups
execute as @e[type=minecraft:item,distance=..4] if items entity @s contents *[minecraft:custom_data~{sulfur_striker_powerup:true}] run tag @s add ff_sulfur_strikers_powerup
execute as @e[type=minecraft:item,tag=ff_sulfur_strikers_powerup,distance=..4] run data merge entity @s {Age:5400s,Motion:[0.0d,-0.02d,0.0d]}
