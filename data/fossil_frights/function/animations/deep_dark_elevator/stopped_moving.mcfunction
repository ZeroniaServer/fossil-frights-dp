tag @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] remove ff_deep_dark_elevator.is_moving
execute as @e[type=minecraft:item_display,tag=ff_deep_dark_elevator_seat] at @s on passengers run tp @s[type=player] ~ ~ ~
kill @e[type=minecraft:item_display,tag=ff_deep_dark_elevator_seat]

function fossil_frights:animations/deep_dark_elevator/place_barrier_blocks
