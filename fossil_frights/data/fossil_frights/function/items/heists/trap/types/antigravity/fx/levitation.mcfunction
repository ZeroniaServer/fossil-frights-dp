execute as @a[predicate=fossil_frights:player/team/thief,tag=ff_antigravity_fx,gamemode=!spectator] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.35 0.8 0.35 0.005 4 force
execute if entity @a[predicate=fossil_frights:player/team/thief,tag=ff_antigravity_fx,gamemode=!spectator] run schedule function fossil_frights:items/heists/trap/types/antigravity/fx/levitation 10t append
execute as @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,tag=ff_antigravity_fx] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.35 0.8 0.35 0.005 4 force
execute if entity @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver,tag=ff_antigravity_fx] run schedule function fossil_frights:items/heists/trap/types/antigravity/fx/levitation 10t append
