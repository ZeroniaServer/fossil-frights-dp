execute unless score $naughty_or_nice_started ff_task_state matches 0 run return 0
scoreboard players set $naughty_or_nice_started ff_task_state 1
execute positioned -0.25 72.0 12.5 run playsound minecraft:entity.camel.ambient master @a[distance=..24] ~ ~ ~ 1 1
execute positioned -0.25 72.0 12.5 run function fossil_frights:items/util/summon_item {loot_table:"fossil_frights:items/tasks/naughty_or_nice/present",nbt:{PickupDelay:20,Age:0,Motion:[0.0d,0.15d,0.18d]}}
execute positioned -0.25 72.0 12.5 run function fossil_frights:items/util/summon_item {loot_table:"fossil_frights:items/tasks/naughty_or_nice/present",nbt:{PickupDelay:20,Age:0,Motion:[-0.04d,0.17d,0.16d]}}
execute positioned -0.25 72.0 12.5 run function fossil_frights:items/util/summon_item {loot_table:"fossil_frights:items/tasks/naughty_or_nice/present",nbt:{PickupDelay:20,Age:0,Motion:[0.04d,0.17d,0.16d]}}
function fossil_frights:tasks/final/naughty_or_nice/recipients/spawn_interactions
