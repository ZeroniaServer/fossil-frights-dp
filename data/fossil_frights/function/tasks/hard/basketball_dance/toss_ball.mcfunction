scoreboard players set $basketball_dance_head_tossed ff_task_state 1
execute positioned -25.0 81.35 34.5 run function fossil_frights:items/util/summon_item {nbt:{PickupDelay:10,Motion:[0.22d,0.18d,0.0d]},loot_table:"fossil_frights:items/other/basketball"}
execute positioned -25.0 81.3 34.5 run playsound minecraft:entity.item.pickup master @a[tag=ff_active,distance=..20] ~ ~ ~ 0.8 0.7
function fossil_frights:tasks/hard/basketball_dance/end_dance
