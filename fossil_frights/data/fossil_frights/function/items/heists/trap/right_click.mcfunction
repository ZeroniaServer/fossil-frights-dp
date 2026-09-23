advancement revoke @s only fossil_frights:items/trap/consume
scoreboard players set @s ff_trap_input_delay 1
function fossil_frights:items/heists/trap/common/pickup_nearby
execute if predicate fossil_frights:player/input/sneak unless entity @s[tag=ff_trap_picked_up] run function fossil_frights:player/actionbar/show/generic/trap/no_trap_to_pick_up
execute if entity @s[tag=ff_trap_picked_up] run return 0
tag @s add ff_trap_cycle_request
