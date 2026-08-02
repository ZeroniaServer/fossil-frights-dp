scoreboard players set @s ff_trap_input_delay 1
execute if score @s ff_trap_selected matches ..0 unless score @s ff_trap_glow_phase matches 0 run tag @s add ff_trap_cycle_request
execute if score @s ff_trap_selected matches ..0 unless score @s ff_trap_glow_phase matches 0 run tag @s add ff_trap_left_cycle
execute if score @s ff_trap_selected matches ..0 unless score @s ff_trap_glow_phase matches 0 run tag @s add ff_trap_place_request
execute if score @s ff_trap_selected matches ..0 unless score @s ff_trap_glow_phase matches 0 run return 0
execute if score @s ff_trap_selected matches 1 unless score @s ff_trap_freeze_phase matches 0 run tag @s add ff_trap_cycle_request
execute if score @s ff_trap_selected matches 1 unless score @s ff_trap_freeze_phase matches 0 run tag @s add ff_trap_left_cycle
execute if score @s ff_trap_selected matches 1 unless score @s ff_trap_freeze_phase matches 0 run tag @s add ff_trap_place_request
execute if score @s ff_trap_selected matches 1 unless score @s ff_trap_freeze_phase matches 0 run return 0
execute if score @s ff_trap_selected matches 2 unless score @s ff_trap_antigravity_phase matches 0 run tag @s add ff_trap_cycle_request
execute if score @s ff_trap_selected matches 2 unless score @s ff_trap_antigravity_phase matches 0 run tag @s add ff_trap_left_cycle
execute if score @s ff_trap_selected matches 2 unless score @s ff_trap_antigravity_phase matches 0 run tag @s add ff_trap_place_request
execute if score @s ff_trap_selected matches 2 unless score @s ff_trap_antigravity_phase matches 0 run return 0
execute if score @s ff_trap_selected matches 3 unless score @s ff_trap_jelly_phase matches 0 run tag @s add ff_trap_cycle_request
execute if score @s ff_trap_selected matches 3 unless score @s ff_trap_jelly_phase matches 0 run tag @s add ff_trap_left_cycle
execute if score @s ff_trap_selected matches 3 unless score @s ff_trap_jelly_phase matches 0 run tag @s add ff_trap_place_request
execute if score @s ff_trap_selected matches 3 unless score @s ff_trap_jelly_phase matches 0 run return 0
execute if score @s ff_trap_selected matches 4.. unless score @s ff_trap_explosive_phase matches 0 run tag @s add ff_trap_cycle_request
execute if score @s ff_trap_selected matches 4.. unless score @s ff_trap_explosive_phase matches 0 run tag @s add ff_trap_left_cycle
execute if score @s ff_trap_selected matches 4.. unless score @s ff_trap_explosive_phase matches 0 run tag @s add ff_trap_place_request
execute if score @s ff_trap_selected matches 4.. unless score @s ff_trap_explosive_phase matches 0 run return 0
tag @s add ff_trap_place_request
