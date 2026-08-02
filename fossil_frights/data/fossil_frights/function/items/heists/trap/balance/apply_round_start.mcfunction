scoreboard players set @s ff_trap_glow_phase 0
scoreboard players set @s ff_trap_glow_timer 0
scoreboard players set @s ff_trap_freeze_phase 0
scoreboard players set @s ff_trap_freeze_timer 0
scoreboard players set @s ff_trap_antigravity_phase 0
scoreboard players set @s ff_trap_antigravity_timer 0
scoreboard players set @s ff_trap_jelly_phase 0
scoreboard players set @s ff_trap_jelly_timer 0
execute if score $trap_guard_count ff_trap_balance > $trap_thief_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_phase 4
execute if score $trap_guard_count ff_trap_balance > $trap_thief_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_timer 0
execute if score $trap_guard_count ff_trap_balance > $trap_thief_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_cooldown 0
execute unless score $trap_guard_count ff_trap_balance > $trap_thief_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_phase 3
execute unless score $trap_guard_count ff_trap_balance > $trap_thief_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_timer 1200
execute unless score $trap_guard_count ff_trap_balance > $trap_thief_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_cooldown 1200
execute if items entity @s weapon.mainhand *[custom_data~{ff_heist_trap:true}] run function fossil_frights:items/heists/trap/refresh_selected_mainhand
