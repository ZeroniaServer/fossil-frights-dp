execute as @e[type=minecraft:sulfur_cube,tag=ff_ice_sculpture_driver] run data merge entity @s {Size:0}
tp @e[type=minecraft:sulfur_cube,tag=ff_ice_sculpture_driver] ~ -100 ~
kill @e[type=minecraft:sulfur_cube,tag=ff_ice_sculpture_driver]
fill 10 70 59 10 71 59 air strict
