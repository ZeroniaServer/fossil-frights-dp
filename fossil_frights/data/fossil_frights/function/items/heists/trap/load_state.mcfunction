execute store result score @s ff_trap_selected run data get storage fossil_frights:trap_state selected 1
execute store result score @s ff_trap_glow_phase run data get storage fossil_frights:trap_state glow_phase 1
execute store result score @s ff_trap_glow_timer run data get storage fossil_frights:trap_state glow_timer 1
execute store result score @s ff_trap_glow_cooldown run data get storage fossil_frights:trap_state glow_cooldown 1
execute store result score @s ff_trap_freeze_phase run data get storage fossil_frights:trap_state freeze_phase 1
execute store result score @s ff_trap_freeze_timer run data get storage fossil_frights:trap_state freeze_timer 1
execute store result score @s ff_trap_freeze_cooldown run data get storage fossil_frights:trap_state freeze_cooldown 1
execute store result score @s ff_trap_antigravity_phase run data get storage fossil_frights:trap_state antigravity_phase 1
execute store result score @s ff_trap_antigravity_timer run data get storage fossil_frights:trap_state antigravity_timer 1
execute store result score @s ff_trap_antigravity_cooldown run data get storage fossil_frights:trap_state antigravity_cooldown 1
execute store result score @s ff_trap_jelly_phase run data get storage fossil_frights:trap_state jelly_phase 1
execute store result score @s ff_trap_jelly_timer run data get storage fossil_frights:trap_state jelly_timer 1
execute store result score @s ff_trap_jelly_cooldown run data get storage fossil_frights:trap_state jelly_cooldown 1
execute store result score @s ff_trap_explosive_phase run data get storage fossil_frights:trap_state explosive_phase 1
execute store result score @s ff_trap_explosive_timer run data get storage fossil_frights:trap_state explosive_timer 1
execute store result score @s ff_trap_explosive_cooldown run data get storage fossil_frights:trap_state explosive_cooldown 1
scoreboard players set @s ff_trap_input_delay 0
function fossil_frights:items/heists/trap/restore_selected_mainhand
