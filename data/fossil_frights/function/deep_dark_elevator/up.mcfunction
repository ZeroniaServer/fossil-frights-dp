execute if score $step ff_deep_dark_elevator >= $duration_ticks ff_deep_dark_elevator run return 0

scoreboard players add $step ff_deep_dark_elevator 1
schedule clear fossil_frights:deep_dark_elevator/down
execute as @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] unless entity @s[tag=ff_deep_dark_elevator.is_moving] run function fossil_frights:deep_dark_elevator/started_moving

function fossil_frights:deep_dark_elevator/while_moving

execute if score $step ff_deep_dark_elevator < $duration_ticks ff_deep_dark_elevator run return run schedule function fossil_frights:deep_dark_elevator/up 1t
function fossil_frights:deep_dark_elevator/stopped_moving
schedule function fossil_frights:deep_dark_elevator/down 60t
