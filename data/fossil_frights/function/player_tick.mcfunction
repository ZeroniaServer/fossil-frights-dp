scoreboard players set @s ff_lock_look 0
scoreboard players set @s ff_scan 16
execute if data entity @s {SelectedItem:{id:"minecraft:blaze_rod"}} anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:raycast_step
