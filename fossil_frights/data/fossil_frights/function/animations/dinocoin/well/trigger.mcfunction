execute if entity @s[type=minecraft:item,predicate=fossil_frights:entity/contents/dinocoin] run function fossil_frights:items/util/return_all_but_one_to_thrower
kill @s[type=minecraft:item,predicate=fossil_frights:entity/contents/dinocoin]
function fossil_frights:run_breakdown/event/add {code:"C",id:"01"}
tag @a[tag=ff_well_teleporting] remove ff_well_teleporting
tag @a[predicate=fossil_frights:player/is_playing,sort=nearest,limit=1] add ff_well_teleporting
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.75 ~0.1 ~ 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.53 ~0.1 ~0.53 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~ ~0.1 ~0.75 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.53 ~0.1 ~0.53 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.75 ~0.1 ~ 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.53 ~0.1 ~-0.53 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~ ~0.1 ~-0.75 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.53 ~0.1 ~-0.53 0.02 0.03 0.02 0.0 3 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.38 ~0.1 ~ 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.27 ~0.1 ~0.27 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~ ~0.1 ~0.38 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.27 ~0.1 ~0.27 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.38 ~0.1 ~ 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~-0.27 ~0.1 ~-0.27 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~ ~0.1 ~-0.38 0.02 0.03 0.02 0.0 2 force
execute as @a[tag=ff_well_teleporting,limit=1] at @s run particle minecraft:end_rod ~0.27 ~0.1 ~-0.27 0.02 0.03 0.02 0.0 2 force
schedule function fossil_frights:animations/dinocoin/well/chest 5t replace
schedule function fossil_frights:animations/dinocoin/well/head 10t replace
schedule function fossil_frights:animations/dinocoin/well/finish 15t replace
