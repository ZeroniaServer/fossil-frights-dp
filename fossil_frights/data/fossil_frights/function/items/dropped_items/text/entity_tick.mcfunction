execute unless predicate fossil_frights:entity/has_vehicle if predicate fossil_frights:game_state/game_running run particle minecraft:white_smoke ~ ~0.125 ~ 0.05 0 0.05 0.02 10
execute unless predicate fossil_frights:entity/has_vehicle run return run kill @s

execute on vehicle run data modify storage fossil_frights:dropped_items seconds set compute default integer fossil_frights:dropped_items/despawn_seconds
execute on vehicle run data modify storage fossil_frights:dropped_items tenths set compute default integer fossil_frights:dropped_items/despawn_tenths
data modify entity @s text set value [{color:"red",text:""},{font:"fossil-frights:small_caps",nbt:"seconds",storage:"fossil_frights:dropped_items",plain:true},".",{font:"fossil-frights:small_caps",nbt:"tenths",storage:"fossil_frights:dropped_items",plain:true},"\u17b5\u17b5"]

execute if predicate fossil_frights:entity/periodic_tick/15 run particle minecraft:raid_omen ~ ~0.25 ~ 0.1 0 0.1 0 1 force @a[team=ff_thief]
execute if predicate fossil_frights:entity/periodic_tick/15 run particle minecraft:trial_omen ~ ~0.25 ~ 0.1 0 0.1 0 1 force @a[team=ff_guard,gamemode=!spectator]
execute if predicate fossil_frights:entity/periodic_tick/15 run particle minecraft:trial_omen ~ ~0.25 ~ 0.1 0 0.1 0 1 force @a[team=ff_spectator]
