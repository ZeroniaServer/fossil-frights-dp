tag @s remove ff_trap_switched
execute if score @s ff_trap_freeze_phase matches 0 run tag @s add ff_trap_ready_exists
execute if score @s ff_trap_antigravity_phase matches 0 run tag @s add ff_trap_ready_exists
execute if score @s ff_trap_jelly_phase matches 0 run tag @s add ff_trap_ready_exists
execute if score @s ff_trap_explosive_phase matches 0 run tag @s add ff_trap_ready_exists
execute unless entity @s[tag=ff_trap_switched] if score @s ff_trap_freeze_phase matches 0 run function fossil_frights:items/heists/trap/switch/select_freeze
execute unless entity @s[tag=ff_trap_switched] if score @s ff_trap_antigravity_phase matches 0 run function fossil_frights:items/heists/trap/switch/select_antigravity
execute unless entity @s[tag=ff_trap_switched] if score @s ff_trap_jelly_phase matches 0 run function fossil_frights:items/heists/trap/switch/select_jelly
execute unless entity @s[tag=ff_trap_switched] if score @s ff_trap_explosive_phase matches 0 run function fossil_frights:items/heists/trap/switch/select_explosive
execute unless entity @s[tag=ff_trap_switched] unless entity @s[tag=ff_trap_ready_exists] unless score @s ff_trap_glow_phase matches 0 unless score @s ff_trap_freeze_phase matches 4.. run function fossil_frights:items/heists/trap/switch/select_freeze
execute unless entity @s[tag=ff_trap_switched] unless entity @s[tag=ff_trap_ready_exists] unless score @s ff_trap_glow_phase matches 0 unless score @s ff_trap_antigravity_phase matches 4.. run function fossil_frights:items/heists/trap/switch/select_antigravity
execute unless entity @s[tag=ff_trap_switched] unless entity @s[tag=ff_trap_ready_exists] unless score @s ff_trap_glow_phase matches 0 unless score @s ff_trap_jelly_phase matches 4.. run function fossil_frights:items/heists/trap/switch/select_jelly
execute unless entity @s[tag=ff_trap_switched] unless entity @s[tag=ff_trap_ready_exists] unless score @s ff_trap_glow_phase matches 0 unless score @s ff_trap_explosive_phase matches 4.. run function fossil_frights:items/heists/trap/switch/select_explosive
execute unless entity @s[tag=ff_trap_switched] run function fossil_frights:items/heists/trap/switch/select_glow
tag @s remove ff_trap_ready_exists
