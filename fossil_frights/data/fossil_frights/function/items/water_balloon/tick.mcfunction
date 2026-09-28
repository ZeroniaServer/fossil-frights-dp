execute if entity @a[limit=1,scores={ff_thrown_water_balloon=1..}] run schedule function fossil_frights:items/water_balloon/new_water_balloons 1t
scoreboard players reset @a ff_thrown_water_balloon
