execute if score @s ff_trap_type matches ..0 at @s run function fossil_frights:items/heists/trap/types/glow/fx/pickup
execute if score @s ff_trap_type matches 1 at @s run function fossil_frights:items/heists/trap/types/freeze/fx/pickup
execute if score @s ff_trap_type matches 2 at @s run function fossil_frights:items/heists/trap/types/antigravity/fx/pickup
execute if score @s ff_trap_type matches 3 at @s run function fossil_frights:items/heists/trap/types/jelly/fx/pickup
execute if score @s ff_trap_type matches 4.. at @s run function fossil_frights:items/heists/trap/types/explosive/fx/pickup
execute at @s run playsound minecraft:block.bell.resonate player @a[tag=ff_trap_picker,limit=1] ~ ~ ~ 0.8 1.4
scoreboard players operation @a[tag=ff_trap_picker,limit=1] ff_trap_selected = @s ff_trap_type
scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_pickup_feedback 20
execute if score @s ff_trap_type matches ..0 if score @a[tag=ff_trap_picker,limit=1] ff_trap_glow_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_glow_phase 0
execute if score @s ff_trap_type matches ..0 if score @a[tag=ff_trap_picker,limit=1] ff_trap_glow_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_glow_timer 0
execute if score @s ff_trap_type matches ..0 if score @a[tag=ff_trap_picker,limit=1] ff_trap_glow_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_glow_cooldown 0
execute if score @s ff_trap_type matches 1 if score @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_phase 0
execute if score @s ff_trap_type matches 1 if score @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_timer 0
execute if score @s ff_trap_type matches 1 if score @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_cooldown 0
execute if score @s ff_trap_type matches 2 if score @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_phase 0
execute if score @s ff_trap_type matches 2 if score @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_timer 0
execute if score @s ff_trap_type matches 2 if score @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_cooldown 0
execute if score @s ff_trap_type matches 3 if score @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_phase 0
execute if score @s ff_trap_type matches 3 if score @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_timer 0
execute if score @s ff_trap_type matches 3 if score @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_cooldown 0
execute if score @s ff_trap_type matches 4.. if score @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_phase 0
execute if score @s ff_trap_type matches 4.. if score @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_timer 0
execute if score @s ff_trap_type matches 4.. if score @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_phase matches 1 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_cooldown 0
execute if score @s ff_trap_type matches ..0 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_glow_phase matches 0 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_glow_phase 3
execute if score @s ff_trap_type matches ..0 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_glow_phase matches 0 run scoreboard players operation @a[tag=ff_trap_picker,limit=1] ff_trap_glow_timer = $trap_cooldown_ticks ff_trap_balance
execute if score @s ff_trap_type matches ..0 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_glow_phase matches 0 run scoreboard players operation @a[tag=ff_trap_picker,limit=1] ff_trap_glow_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if score @s ff_trap_type matches 1 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_phase matches 0 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_phase 3
execute if score @s ff_trap_type matches 1 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_phase matches 0 run scoreboard players operation @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_timer = $trap_cooldown_ticks ff_trap_balance
execute if score @s ff_trap_type matches 1 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_phase matches 0 run scoreboard players operation @a[tag=ff_trap_picker,limit=1] ff_trap_freeze_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if score @s ff_trap_type matches 2 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_phase matches 0 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_phase 3
execute if score @s ff_trap_type matches 2 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_phase matches 0 run scoreboard players operation @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_timer = $trap_cooldown_ticks ff_trap_balance
execute if score @s ff_trap_type matches 2 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_phase matches 0 run scoreboard players operation @a[tag=ff_trap_picker,limit=1] ff_trap_antigravity_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if score @s ff_trap_type matches 3 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_phase matches 0 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_phase 3
execute if score @s ff_trap_type matches 3 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_phase matches 0 run scoreboard players operation @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_timer = $trap_cooldown_ticks ff_trap_balance
execute if score @s ff_trap_type matches 3 unless score @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_phase matches 0 run scoreboard players operation @a[tag=ff_trap_picker,limit=1] ff_trap_jelly_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if score @s ff_trap_type matches 4.. unless score @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_phase matches 0 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_phase 3
execute if score @s ff_trap_type matches 4.. unless score @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_phase matches 0 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_timer 1200
execute if score @s ff_trap_type matches 4.. unless score @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_phase matches 0 run scoreboard players set @a[tag=ff_trap_picker,limit=1] ff_trap_explosive_cooldown 1200
tag @a[tag=ff_trap_picker,limit=1] add ff_trap_restore_pending
tag @a[tag=ff_trap_picker,limit=1] add ff_trap_picked_up
kill @s
