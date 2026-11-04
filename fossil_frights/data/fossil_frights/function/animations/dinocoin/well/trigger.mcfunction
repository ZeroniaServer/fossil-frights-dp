execute unless entity @s[type=minecraft:item] run return 0
execute unless items entity @s contents *[custom_data~{itemID:"dinocoin"}] run return 0
execute on origin unless predicate fossil_frights:player/is_playing run return 0

function fossil_frights:items/util/return_all_but_one_to_thrower
execute on origin run function fossil_frights:player/coins/add_used_this_run
function fossil_frights:run_breakdown/event/add {code:"C",id:"01"}

tag @a[tag=ff_well_teleporting] remove ff_well_teleporting
execute on origin run tag @s add ff_well_teleporting
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~0.75 ~0.1 ~ 0.02 0.03 0.02 0.0 3 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~0.53 ~0.1 ~0.53 0.02 0.03 0.02 0.0 3 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~ ~0.1 ~0.75 0.02 0.03 0.02 0.0 3 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~-0.53 ~0.1 ~0.53 0.02 0.03 0.02 0.0 3 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~-0.75 ~0.1 ~ 0.02 0.03 0.02 0.0 3 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~-0.53 ~0.1 ~-0.53 0.02 0.03 0.02 0.0 3 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~ ~0.1 ~-0.75 0.02 0.03 0.02 0.0 3 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~0.53 ~0.1 ~-0.53 0.02 0.03 0.02 0.0 3 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~0.38 ~0.1 ~ 0.02 0.03 0.02 0.0 2 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~0.27 ~0.1 ~0.27 0.02 0.03 0.02 0.0 2 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~ ~0.1 ~0.38 0.02 0.03 0.02 0.0 2 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~-0.27 ~0.1 ~0.27 0.02 0.03 0.02 0.0 2 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~-0.38 ~0.1 ~ 0.02 0.03 0.02 0.0 2 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~-0.27 ~0.1 ~-0.27 0.02 0.03 0.02 0.0 2 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~ ~0.1 ~-0.38 0.02 0.03 0.02 0.0 2 force
execute at @a[limit=1,tag=ff_well_teleporting] run particle minecraft:end_rod ~0.27 ~0.1 ~-0.27 0.02 0.03 0.02 0.0 2 force
schedule function fossil_frights:animations/dinocoin/well/chest 5t replace
schedule function fossil_frights:animations/dinocoin/well/head 10t replace
schedule function fossil_frights:animations/dinocoin/well/finish 15t replace

kill @s
