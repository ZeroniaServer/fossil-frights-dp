scoreboard players add @e[type=minecraft:marker,tag=ff_paint_water] ff_paint_water_time 1

function #fossil_frights:game/heists/paint_fx/paint_water/set_biome
kill @e[type=minecraft:marker,tag=ff_paint_water,scores={ff_paint_water_time=80..}]

execute if entity @e[limit=1,type=minecraft:marker,tag=ff_paint_water] run schedule function fossil_frights:game/heists/paint_fx/paint_water/timer 1t append
