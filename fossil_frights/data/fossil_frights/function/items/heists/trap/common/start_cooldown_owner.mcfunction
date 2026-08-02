execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches ..0 run scoreboard players set @s ff_trap_glow_phase 3
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches ..0 run scoreboard players operation @s ff_trap_glow_timer = $trap_cooldown_ticks ff_trap_balance
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches ..0 run scoreboard players operation @s ff_trap_glow_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches ..0 if score $trap_guard_nearby ff_trap_balance matches 1.. run scoreboard players add @s ff_trap_glow_timer 200
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches ..0 if score $trap_guard_nearby ff_trap_balance matches 1.. run scoreboard players add @s ff_trap_glow_cooldown 200
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 1 run scoreboard players set @s ff_trap_freeze_phase 3
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 1 run scoreboard players operation @s ff_trap_freeze_timer = $trap_cooldown_ticks ff_trap_balance
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 1 run scoreboard players operation @s ff_trap_freeze_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 1 if score $trap_guard_nearby ff_trap_balance matches 1.. run scoreboard players add @s ff_trap_freeze_timer 200
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 1 if score $trap_guard_nearby ff_trap_balance matches 1.. run scoreboard players add @s ff_trap_freeze_cooldown 200
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 2 run scoreboard players set @s ff_trap_antigravity_phase 3
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 2 run scoreboard players operation @s ff_trap_antigravity_timer = $trap_cooldown_ticks ff_trap_balance
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 2 run scoreboard players operation @s ff_trap_antigravity_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 2 if score $trap_guard_nearby ff_trap_balance matches 1.. run scoreboard players add @s ff_trap_antigravity_timer 200
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 2 if score $trap_guard_nearby ff_trap_balance matches 1.. run scoreboard players add @s ff_trap_antigravity_cooldown 200
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 3 run scoreboard players set @s ff_trap_jelly_phase 3
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 3 run scoreboard players operation @s ff_trap_jelly_timer = $trap_cooldown_ticks ff_trap_balance
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 3 run scoreboard players operation @s ff_trap_jelly_cooldown = $trap_cooldown_ticks ff_trap_balance
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 3 if score $trap_guard_nearby ff_trap_balance matches 1.. run scoreboard players add @s ff_trap_jelly_timer 200
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 3 if score $trap_guard_nearby ff_trap_balance matches 1.. run scoreboard players add @s ff_trap_jelly_cooldown 200
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 4.. if score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_phase 3
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 4.. if score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_timer 1200
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 4.. if score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_cooldown 1200
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 4.. unless score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_phase 4
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 4.. unless score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_timer 0
execute if score @e[type=minecraft:marker,tag=ff_trap_owner_check,limit=1] ff_trap_type matches 4.. unless score $trap_thief_count ff_trap_balance > $trap_guard_count ff_trap_balance run scoreboard players set @s ff_trap_explosive_cooldown 0
tag @s add ff_trap_restore_pending
