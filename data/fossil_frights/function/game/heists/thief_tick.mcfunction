scoreboard players add @s ff_heist_punch_cd 0
scoreboard players add @s ff_heist_punch_fx 0
scoreboard players add @s ff_heist_invis_ticks 0
scoreboard players add @s ff_heist_stolen_keys 0
scoreboard players add @s ff_heist_regen_lock 0
scoreboard players add @s ff_heist_thaw_fx 0
scoreboard players add @s ff_heist_paint_fx 0
execute if score @s ff_heist_punch_cd matches 1.. if score @s ff_msg_cooldown matches 0 run function fossil_frights:game/heists/show_punch_cooldown
execute if score @s ff_heist_punch_cd matches 1.. if score @s ff_heist_punch_fx matches ..0 run function fossil_frights:game/heists/punch_cooldown_particle
execute if score @s ff_heist_punch_cd matches 1.. run scoreboard players remove @s ff_heist_punch_cd 1
execute if score @s ff_heist_punch_cd matches 1.. run scoreboard players remove @s ff_heist_punch_fx 1
execute if score @s ff_heist_punch_cd matches 0 run scoreboard players set @s ff_heist_punch_fx 0
execute if score @s ff_heist_regen_lock matches 1 run effect give @s minecraft:saturation infinite 255 true
execute if score @s ff_heist_regen_lock matches 1.. run scoreboard players remove @s ff_heist_regen_lock 1
execute if score @s ff_heist_thaw_fx matches 1.. run particle minecraft:snowflake ~ ~0.1 ~ 0.12 0.05 0.12 0.01 1 force
execute if score @s ff_heist_thaw_fx matches 1.. if score @s ff_heist_thaw_fx matches 2.. run particle minecraft:dust{color:[0.85f,0.96f,1.0f],scale:0.55f} ~ ~0.08 ~ 0.08 0.03 0.08 0.005 1 force
execute if score @s ff_heist_thaw_fx matches 1.. run scoreboard players remove @s ff_heist_thaw_fx 1
execute if score @s ff_heist_paint_fx matches 1.. run particle minecraft:dripping_obsidian_tear ~ ~0.05 ~ 0 0 0 0 1 force
execute if score @s ff_heist_paint_fx matches 1.. run scoreboard players remove @s ff_heist_paint_fx 1
execute if score @s ff_heist_invis_ticks matches 1 run function fossil_frights:game/heists/restore_invisimask
execute if score @s ff_heist_invis_ticks matches 1.. run scoreboard players remove @s ff_heist_invis_ticks 1
execute if score lights ff_hazard_active matches 1 unless entity @s[predicate=fossil_frights:entity/effects/blindness] run effect give @s minecraft:night_vision infinite 0 true
execute if score lights ff_hazard_active matches 1 if entity @s[predicate=fossil_frights:entity/effects/blindness] run effect clear @s minecraft:night_vision
execute unless score lights ff_hazard_active matches 1 run effect clear @s minecraft:night_vision
execute if score floods ff_hazard_active matches 1 run effect give @s minecraft:dolphins_grace 2 0 true
execute if score lava ff_hazard_active matches 1 run effect give @s minecraft:fire_resistance 2 0 true
function fossil_frights:game/heists/heavy_loot/hold_check
