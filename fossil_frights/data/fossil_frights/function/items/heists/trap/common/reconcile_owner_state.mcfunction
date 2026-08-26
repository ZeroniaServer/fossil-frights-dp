execute if score @s ff_trap_glow_phase matches 2 run tag @s add ff_rejoin_trap_glow
execute if score @s ff_trap_freeze_phase matches 2 run tag @s add ff_rejoin_trap_freeze
execute if score @s ff_trap_antigravity_phase matches 2 run tag @s add ff_rejoin_trap_antigravity
execute if score @s ff_trap_jelly_phase matches 2 run tag @s add ff_rejoin_trap_jelly
execute if score @s ff_trap_explosive_phase matches 2 run tag @s add ff_rejoin_trap_explosive
execute if entity @s[tag=ff_rejoin_trap_glow] run scoreboard players set @s ff_trap_glow_phase 3
execute if entity @s[tag=ff_rejoin_trap_glow] run scoreboard players operation @s ff_trap_glow_timer = $trap_cooldown_ticks ff_trap_balance
execute if entity @s[tag=ff_rejoin_trap_glow] run scoreboard players operation @s ff_trap_glow_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if entity @s[tag=ff_rejoin_trap_freeze] run scoreboard players set @s ff_trap_freeze_phase 3
execute if entity @s[tag=ff_rejoin_trap_freeze] run scoreboard players operation @s ff_trap_freeze_timer = $trap_cooldown_ticks ff_trap_balance
execute if entity @s[tag=ff_rejoin_trap_freeze] run scoreboard players operation @s ff_trap_freeze_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if entity @s[tag=ff_rejoin_trap_antigravity] run scoreboard players set @s ff_trap_antigravity_phase 3
execute if entity @s[tag=ff_rejoin_trap_antigravity] run scoreboard players operation @s ff_trap_antigravity_timer = $trap_cooldown_ticks ff_trap_balance
execute if entity @s[tag=ff_rejoin_trap_antigravity] run scoreboard players operation @s ff_trap_antigravity_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if entity @s[tag=ff_rejoin_trap_jelly] run scoreboard players set @s ff_trap_jelly_phase 3
execute if entity @s[tag=ff_rejoin_trap_jelly] run scoreboard players operation @s ff_trap_jelly_timer = $trap_cooldown_ticks ff_trap_balance
execute if entity @s[tag=ff_rejoin_trap_jelly] run scoreboard players operation @s ff_trap_jelly_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if entity @s[tag=ff_rejoin_trap_explosive] if score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_phase 3
execute if entity @s[tag=ff_rejoin_trap_explosive] if score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_timer 1200
execute if entity @s[tag=ff_rejoin_trap_explosive] if score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_cooldown 1200
execute if entity @s[tag=ff_rejoin_trap_explosive] unless score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_phase 4
execute if entity @s[tag=ff_rejoin_trap_explosive] unless score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_timer 0
execute if entity @s[tag=ff_rejoin_trap_explosive] unless score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_cooldown 0
tag @s remove ff_rejoin_trap_glow
tag @s remove ff_rejoin_trap_freeze
tag @s remove ff_rejoin_trap_antigravity
tag @s remove ff_rejoin_trap_jelly
tag @s remove ff_rejoin_trap_explosive
function fossil_frights:items/heists/trap/common/sync_deployed_state
function fossil_frights:items/heists/trap/restore_selected_mainhand
