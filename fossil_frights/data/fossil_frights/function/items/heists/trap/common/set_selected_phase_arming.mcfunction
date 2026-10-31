execute if score @s ff_trap_selected matches ..0 run scoreboard players set @s ff_trap_glow_phase 1
execute if score @s ff_trap_selected matches ..0 run scoreboard players reset @s ff_trap_glow_timer
execute if score @s ff_trap_selected matches 1 run scoreboard players set @s ff_trap_freeze_phase 1
execute if score @s ff_trap_selected matches 1 run scoreboard players reset @s ff_trap_freeze_timer
execute if score @s ff_trap_selected matches 2 run scoreboard players set @s ff_trap_antigravity_phase 1
execute if score @s ff_trap_selected matches 2 run scoreboard players reset @s ff_trap_antigravity_timer
execute if score @s ff_trap_selected matches 3 run scoreboard players set @s ff_trap_jelly_phase 1
execute if score @s ff_trap_selected matches 3 run scoreboard players reset @s ff_trap_jelly_timer
execute if score @s ff_trap_selected matches 4.. run scoreboard players set @s ff_trap_explosive_phase 1
execute if score @s ff_trap_selected matches 4.. run scoreboard players reset @s ff_trap_explosive_timer
