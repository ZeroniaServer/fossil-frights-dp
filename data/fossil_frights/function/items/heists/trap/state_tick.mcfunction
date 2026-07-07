execute if score @s ff_trap_glow_phase matches 1 run scoreboard players add @s ff_trap_glow_timer 1
execute if score @s ff_trap_glow_phase matches 1 if score @s ff_trap_glow_timer matches 50.. run scoreboard players set @s ff_trap_glow_phase 2
execute if score @s ff_trap_glow_phase matches 1 if score @s ff_trap_glow_timer matches 50.. run scoreboard players set @s ff_trap_glow_timer 50
execute if score @s ff_trap_glow_phase matches 3 if score @s ff_trap_glow_timer matches 1.. run scoreboard players remove @s ff_trap_glow_timer 1
execute if score @s ff_trap_glow_phase matches 3 if score @s ff_trap_glow_timer matches ..0 run scoreboard players set @s ff_trap_glow_phase 0
execute if score @s ff_trap_glow_phase matches 3 if score @s ff_trap_glow_timer matches ..0 run scoreboard players set @s ff_trap_glow_timer 0
execute if score @s ff_trap_freeze_phase matches 1 run scoreboard players add @s ff_trap_freeze_timer 1
execute if score @s ff_trap_freeze_phase matches 1 if score @s ff_trap_freeze_timer matches 50.. run scoreboard players set @s ff_trap_freeze_phase 2
execute if score @s ff_trap_freeze_phase matches 1 if score @s ff_trap_freeze_timer matches 50.. run scoreboard players set @s ff_trap_freeze_timer 50
execute if score @s ff_trap_freeze_phase matches 3 if score @s ff_trap_freeze_timer matches 1.. run scoreboard players remove @s ff_trap_freeze_timer 1
execute if score @s ff_trap_freeze_phase matches 3 if score @s ff_trap_freeze_timer matches ..0 run scoreboard players set @s ff_trap_freeze_phase 0
execute if score @s ff_trap_freeze_phase matches 3 if score @s ff_trap_freeze_timer matches ..0 run scoreboard players set @s ff_trap_freeze_timer 0
execute if score @s ff_trap_antigravity_phase matches 1 run scoreboard players add @s ff_trap_antigravity_timer 1
execute if score @s ff_trap_antigravity_phase matches 1 if score @s ff_trap_antigravity_timer matches 50.. run scoreboard players set @s ff_trap_antigravity_phase 2
execute if score @s ff_trap_antigravity_phase matches 1 if score @s ff_trap_antigravity_timer matches 50.. run scoreboard players set @s ff_trap_antigravity_timer 50
execute if score @s ff_trap_antigravity_phase matches 3 if score @s ff_trap_antigravity_timer matches 1.. run scoreboard players remove @s ff_trap_antigravity_timer 1
execute if score @s ff_trap_antigravity_phase matches 3 if score @s ff_trap_antigravity_timer matches ..0 run scoreboard players set @s ff_trap_antigravity_phase 0
execute if score @s ff_trap_antigravity_phase matches 3 if score @s ff_trap_antigravity_timer matches ..0 run scoreboard players set @s ff_trap_antigravity_timer 0
execute if score @s ff_trap_jelly_phase matches 1 run scoreboard players add @s ff_trap_jelly_timer 1
execute if score @s ff_trap_jelly_phase matches 1 if score @s ff_trap_jelly_timer matches 50.. run scoreboard players set @s ff_trap_jelly_phase 2
execute if score @s ff_trap_jelly_phase matches 1 if score @s ff_trap_jelly_timer matches 50.. run scoreboard players set @s ff_trap_jelly_timer 50
execute if score @s ff_trap_jelly_phase matches 3 if score @s ff_trap_jelly_timer matches 1.. run scoreboard players remove @s ff_trap_jelly_timer 1
execute if score @s ff_trap_jelly_phase matches 3 if score @s ff_trap_jelly_timer matches ..0 run scoreboard players set @s ff_trap_jelly_phase 0
execute if score @s ff_trap_jelly_phase matches 3 if score @s ff_trap_jelly_timer matches ..0 run scoreboard players set @s ff_trap_jelly_timer 0
execute if score @s ff_trap_explosive_phase matches 1 run scoreboard players add @s ff_trap_explosive_timer 1
execute if score @s ff_trap_explosive_phase matches 1 if score @s ff_trap_explosive_timer matches 50.. run scoreboard players set @s ff_trap_explosive_phase 2
execute if score @s ff_trap_explosive_phase matches 1 if score @s ff_trap_explosive_timer matches 50.. run scoreboard players set @s ff_trap_explosive_timer 50
execute if score @s ff_trap_explosive_phase matches 3 if score @s ff_trap_explosive_timer matches 1.. run scoreboard players remove @s ff_trap_explosive_timer 1
execute if score @s ff_trap_explosive_phase matches 3 if score @s ff_trap_explosive_timer matches ..0 run scoreboard players set @s ff_trap_explosive_phase 0
execute if score @s ff_trap_explosive_phase matches 3 if score @s ff_trap_explosive_timer matches ..0 run scoreboard players set @s ff_trap_explosive_timer 0
