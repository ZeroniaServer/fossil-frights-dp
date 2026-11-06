clear @s
execute if score @s ff_heist_guard_has_key matches 1 run item replace entity @s container.8 with minecraft:paper[minecraft:item_model="fossil_frights:items/frights/key/key",minecraft:item_name={translate:'ff.item.guard_key',color:'yellow'},minecraft:custom_data={ff_heist_guard_key:true,ff_prevent_drop:true}] 1
execute unless score @s ff_heist_guard_has_key matches 1 run item replace entity @s container.8 with minecraft:paper[minecraft:item_model="fossil_frights:items/frights/key/cooldown/key_cooldown",minecraft:item_name={translate:'ff.item.missing_key',color:'gray'},minecraft:custom_data={ff_heist_missing_key:true,ff_prevent_drop:true}] 1
tag @s remove ff_map_claimed
tag @s remove ff_map_auto_given
scoreboard players reset @s ff_key_cooldown
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
scoreboard players reset @s ff_heist_guard_sneak_ticks
scoreboard players reset @s ff_heist_guard_unsneak_ticks
function fossil_frights:items/heists/ice_cannon/equip_guard_hat
loot replace entity @s container.0 loot fossil_frights:items/heists/night_stick
loot replace entity @s container.1 loot fossil_frights:items/heists/ice_cannon_remote
loot replace entity @s container.2 loot fossil_frights:items/heists/trap_placer/glow_empty
loot replace entity @s container.3 loot fossil_frights:items/heists/camera_remote
loot replace entity @s container.4 loot fossil_frights:items/heists/loot_book
