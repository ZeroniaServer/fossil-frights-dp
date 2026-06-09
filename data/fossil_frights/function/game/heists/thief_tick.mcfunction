scoreboard players add @s ff_heist_punch_cd 0
scoreboard players add @s ff_heist_punch_fx 0
scoreboard players add @s ff_heist_invis_ticks 0
execute if score @s ff_heist_punch_cd matches 1.. run function fossil_frights:game/heists/show_punch_cooldown
execute if score @s ff_heist_punch_cd matches 1.. if score @s ff_heist_punch_fx matches ..0 run function fossil_frights:game/heists/punch_cooldown_particle
execute if score @s ff_heist_punch_cd matches 1.. run scoreboard players remove @s ff_heist_punch_cd 1
execute if score @s ff_heist_punch_cd matches 1.. run scoreboard players remove @s ff_heist_punch_fx 1
execute if score @s ff_heist_punch_cd matches 0 run scoreboard players set @s ff_heist_punch_fx 0
execute if score @s ff_heist_invis_ticks matches 1 run function fossil_frights:game/heists/restore_invisimask
execute if score @s ff_heist_invis_ticks matches 1.. run scoreboard players remove @s ff_heist_invis_ticks 1
execute if score floods ff_hazard_active matches 1 run effect give @s minecraft:dolphins_grace 2 0 true
execute if score lava ff_hazard_active matches 1 run effect give @s minecraft:fire_resistance 2 0 true
function fossil_frights:game/heists/heavy_loot/hold_check
