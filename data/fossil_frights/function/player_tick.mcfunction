scoreboard players add @s ff_key_cooldown 0
scoreboard players set @s ff_lock_look 0
scoreboard players set @s ff_scan 16
execute if score @s ff_key_cooldown matches 0 if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick"}} anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:raycast_step
