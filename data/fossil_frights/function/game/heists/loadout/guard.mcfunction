clear @s
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
scoreboard players set @s ff_trap_selected 0
scoreboard players set @s ff_trap_input_delay 0
scoreboard players set @s ff_trap_glow_phase 2
scoreboard players set @s ff_trap_glow_timer 50
scoreboard players set @s ff_trap_freeze_phase 2
scoreboard players set @s ff_trap_freeze_timer 50
scoreboard players set @s ff_trap_antigravity_phase 2
scoreboard players set @s ff_trap_antigravity_timer 50
scoreboard players set @s ff_trap_jelly_phase 2
scoreboard players set @s ff_trap_jelly_timer 50
scoreboard players set @s ff_trap_explosive_phase 2
scoreboard players set @s ff_trap_explosive_timer 50
function fossil_frights:items/heists/ice_cannon/equip_guard_hat
loot replace entity @s container.0 loot fossil_frights:items/heists/night_stick
loot replace entity @s container.1 loot fossil_frights:items/heists/ice_cannon_remote
loot replace entity @s container.2 loot fossil_frights:items/heists/trap_glow_empty
loot replace entity @s container.3 loot fossil_frights:items/heists/camera_remote
loot replace entity @s container.4 loot fossil_frights:items/heists/loot_book
