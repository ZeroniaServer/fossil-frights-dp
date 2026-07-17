execute as @a[team=ff_thief,tag=ff_antigravity_fx,gamemode=!spectator] at @s run particle minecraft:portal ~ ~1 ~ 0.35 0.8 0.35 0.05 4 force
execute if entity @a[team=ff_thief,tag=ff_antigravity_fx,gamemode=!spectator] run schedule function fossil_frights:items/heists/trap/types/antigravity/fx/levitation 10t append
