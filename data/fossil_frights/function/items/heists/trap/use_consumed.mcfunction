advancement revoke @s only fossil_frights:trap_consumed
tag @s add ff_trap_restore_pending
execute if predicate fossil_frights:player/input/sneak run return run function fossil_frights:items/heists/trap/switch_next
execute if score @s ff_trap_cooldown matches 1.. run return run function fossil_frights:items/heists/trap/on_cooldown
tag @s remove ff_trap_placed
scoreboard players set @s ff_glowtrap_scan 11
execute anchored eyes positioned ^ ^ ^0.2 run function fossil_frights:items/heists/trap/common/raycast_step
execute if entity @s[tag=ff_trap_placed] run scoreboard players set @s ff_trap_cooldown 40
tag @s remove ff_trap_placed
