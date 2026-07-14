execute unless score $step ff_deep_dark_elevator matches 1.. run return 0

execute if score $step ff_deep_dark_elevator = $duration_ticks ff_deep_dark_elevator run function fossil_frights:animations/dinocoin/crane/play/pull_back
scoreboard players remove $step ff_deep_dark_elevator 1
schedule clear fossil_frights:animations/deep_dark_elevator/up
execute as @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] unless entity @s[tag=ff_deep_dark_elevator.is_moving] run function fossil_frights:animations/deep_dark_elevator/started_moving

function fossil_frights:animations/deep_dark_elevator/while_moving

execute if score $step ff_deep_dark_elevator matches 1.. run return run schedule function fossil_frights:animations/deep_dark_elevator/down 1t
function fossil_frights:animations/deep_dark_elevator/stopped_moving
scoreboard players set $crane_wait ff_game_state 0
