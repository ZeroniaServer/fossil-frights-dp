advancement revoke @s only fossil_frights:trap_consumed
scoreboard players set @s ff_trap_input_delay 1
function fossil_frights:items/heists/trap/common/pickup_nearby
execute if predicate fossil_frights:player/input/sneak unless entity @s[tag=ff_trap_picked_up] run scoreboard players set @s ff_trap_no_pickup_feedback 20
execute if entity @s[tag=ff_trap_picked_up] run return 0
tag @s add ff_trap_cycle_request
