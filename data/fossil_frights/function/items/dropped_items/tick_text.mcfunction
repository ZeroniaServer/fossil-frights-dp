execute unless predicate fossil_frights:entity/has_vehicle run return run kill @s

execute on vehicle run scoreboard players operation #remaining_ticks ff_dropped_item_despawn_timestamp = @s ff_dropped_item_despawn_timestamp
execute store result score #seconds ff_dropped_item_despawn_timestamp store result score #deciseconds ff_dropped_item_despawn_timestamp run scoreboard players operation #remaining_ticks ff_dropped_item_despawn_timestamp -= #gametime ff_dropped_item_despawn_timestamp
scoreboard players operation #seconds ff_dropped_item_despawn_timestamp /= #20 ff_constant
scoreboard players operation #deciseconds ff_dropped_item_despawn_timestamp %= #20 ff_constant
scoreboard players operation #deciseconds ff_dropped_item_despawn_timestamp *= #10 ff_constant
scoreboard players operation #deciseconds ff_dropped_item_despawn_timestamp /= #20 ff_constant
data modify entity @s text set value [{color:"red",text:""},{font:"fossil-frights:small_numbers_high",score:{name:"#seconds",objective:"ff_dropped_item_despawn_timestamp"}},".",{font:"fossil-frights:small_numbers_high",score:{name:"#deciseconds",objective:"ff_dropped_item_despawn_timestamp"}},{bold:true,text:"\N{ZERO WIDTH NON-JOINER}\N{ZERO WIDTH NON-JOINER}"}]

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:15}} run particle minecraft:raid_omen ~ ~0.25 ~ 0.1 0 0.1 0 1 force @a[team=ff_thief]
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:15}} run particle minecraft:trial_omen ~ ~0.25 ~ 0.1 0 0.1 0 1 force @a[team=ff_guard,gamemode=!spectator]
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:15}} run particle minecraft:trial_omen ~ ~0.25 ~ 0.1 0 0.1 0 1 force @a[team=ff_spectator]

execute if score #remaining_ticks ff_dropped_item_despawn_timestamp matches ..1 run particle minecraft:white_smoke ~ ~0.125 ~ 0.05 0 0.05 0.02 10
