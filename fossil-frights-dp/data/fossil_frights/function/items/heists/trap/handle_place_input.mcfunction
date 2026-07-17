execute if score @s ff_trap_selected matches ..0 unless score @s ff_trap_glow_phase matches 0 run return run function fossil_frights:items/heists/trap/on_cooldown
execute if score @s ff_trap_selected matches 1 unless score @s ff_trap_freeze_phase matches 0 run return run function fossil_frights:items/heists/trap/on_cooldown
execute if score @s ff_trap_selected matches 2 unless score @s ff_trap_antigravity_phase matches 0 run return run function fossil_frights:items/heists/trap/on_cooldown
execute if score @s ff_trap_selected matches 3 unless score @s ff_trap_jelly_phase matches 0 run return run function fossil_frights:items/heists/trap/on_cooldown
execute if score @s ff_trap_selected matches 4.. unless score @s ff_trap_explosive_phase matches 0 run return run function fossil_frights:items/heists/trap/on_cooldown
tag @s remove ff_trap_placed
scoreboard players set @s ff_glowtrap_scan 11
execute anchored eyes positioned ^ ^ ^0.2 run function fossil_frights:items/heists/trap/common/raycast_step
execute if entity @s[tag=ff_trap_placed] run function fossil_frights:items/heists/trap/common/set_selected_phase_arming
execute if entity @s[tag=ff_trap_placed] run tag @s add ff_trap_restore_pending
tag @s remove ff_trap_placed
