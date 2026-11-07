execute unless score $loot_ice_sculpture ff_heist_loot_state matches 1..2 run return 0
execute as @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] run data merge entity @s {view_range:1f}
execute as @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] at @s unless entity @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,limit=1] run function fossil_frights:game/heists/loot/rare/ice_sculpture/spawn
execute as @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] at @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,limit=1] run tp @s ~ ~ ~
execute if score $loot_ice_sculpture ff_heist_loot_state matches 1 positioned 68.5 82.0 46.5 unless entity @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,distance=..1,limit=1] run function fossil_frights:game/heists/loot/rare/ice_sculpture/mark_stolen
execute if score $loot_ice_sculpture ff_heist_loot_state matches 1..2 as @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,x=2,y=83,z=14,dx=-2,dy=-4,dz=-4,limit=1] at @s run function fossil_frights:game/heists/loot/rare/ice_sculpture/capture
