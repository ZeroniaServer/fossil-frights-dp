execute if score @s ff_hoverboard_restore_slot matches 0 run scoreboard players set @s ff_hoverboard_restore_damage 3000
execute if score @s ff_hoverboard_restore_slot matches 0 run scoreboard players operation @s ff_hoverboard_restore_damage -= @s ff_hoverboard_damage_0
execute if score @s ff_hoverboard_restore_slot matches 0 if items entity @s hotbar.0 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.0 loot fossil_frights:items/creators/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 0 unless items entity @s hotbar.0 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.0 loot fossil_frights:items/anvil/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 0 if entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.0 fossil_frights:items/hoverboard/durability/restore_active
execute if score @s ff_hoverboard_restore_slot matches 0 unless entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.0 fossil_frights:items/hoverboard/durability/restore_inactive
execute if score @s ff_hoverboard_restore_slot matches 1 run scoreboard players set @s ff_hoverboard_restore_damage 3000
execute if score @s ff_hoverboard_restore_slot matches 1 run scoreboard players operation @s ff_hoverboard_restore_damage -= @s ff_hoverboard_damage_1
execute if score @s ff_hoverboard_restore_slot matches 1 if items entity @s hotbar.1 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.1 loot fossil_frights:items/creators/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 1 unless items entity @s hotbar.1 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.1 loot fossil_frights:items/anvil/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 1 if entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.1 fossil_frights:items/hoverboard/durability/restore_active
execute if score @s ff_hoverboard_restore_slot matches 1 unless entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.1 fossil_frights:items/hoverboard/durability/restore_inactive
execute if score @s ff_hoverboard_restore_slot matches 2 run scoreboard players set @s ff_hoverboard_restore_damage 3000
execute if score @s ff_hoverboard_restore_slot matches 2 run scoreboard players operation @s ff_hoverboard_restore_damage -= @s ff_hoverboard_damage_2
execute if score @s ff_hoverboard_restore_slot matches 2 if items entity @s hotbar.2 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.2 loot fossil_frights:items/creators/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 2 unless items entity @s hotbar.2 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.2 loot fossil_frights:items/anvil/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 2 if entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.2 fossil_frights:items/hoverboard/durability/restore_active
execute if score @s ff_hoverboard_restore_slot matches 2 unless entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.2 fossil_frights:items/hoverboard/durability/restore_inactive
execute if score @s ff_hoverboard_restore_slot matches 3 run scoreboard players set @s ff_hoverboard_restore_damage 3000
execute if score @s ff_hoverboard_restore_slot matches 3 run scoreboard players operation @s ff_hoverboard_restore_damage -= @s ff_hoverboard_damage_3
execute if score @s ff_hoverboard_restore_slot matches 3 if items entity @s hotbar.3 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.3 loot fossil_frights:items/creators/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 3 unless items entity @s hotbar.3 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.3 loot fossil_frights:items/anvil/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 3 if entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.3 fossil_frights:items/hoverboard/durability/restore_active
execute if score @s ff_hoverboard_restore_slot matches 3 unless entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.3 fossil_frights:items/hoverboard/durability/restore_inactive
execute if score @s ff_hoverboard_restore_slot matches 4 run scoreboard players set @s ff_hoverboard_restore_damage 3000
execute if score @s ff_hoverboard_restore_slot matches 4 run scoreboard players operation @s ff_hoverboard_restore_damage -= @s ff_hoverboard_damage_4
execute if score @s ff_hoverboard_restore_slot matches 4 if items entity @s hotbar.4 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.4 loot fossil_frights:items/creators/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 4 unless items entity @s hotbar.4 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.4 loot fossil_frights:items/anvil/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 4 if entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.4 fossil_frights:items/hoverboard/durability/restore_active
execute if score @s ff_hoverboard_restore_slot matches 4 unless entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.4 fossil_frights:items/hoverboard/durability/restore_inactive
execute if score @s ff_hoverboard_restore_slot matches 5 run scoreboard players set @s ff_hoverboard_restore_damage 3000
execute if score @s ff_hoverboard_restore_slot matches 5 run scoreboard players operation @s ff_hoverboard_restore_damage -= @s ff_hoverboard_damage_5
execute if score @s ff_hoverboard_restore_slot matches 5 if items entity @s hotbar.5 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.5 loot fossil_frights:items/creators/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 5 unless items entity @s hotbar.5 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.5 loot fossil_frights:items/anvil/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 5 if entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.5 fossil_frights:items/hoverboard/durability/restore_active
execute if score @s ff_hoverboard_restore_slot matches 5 unless entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.5 fossil_frights:items/hoverboard/durability/restore_inactive
execute if score @s ff_hoverboard_restore_slot matches 6 run scoreboard players set @s ff_hoverboard_restore_damage 3000
execute if score @s ff_hoverboard_restore_slot matches 6 run scoreboard players operation @s ff_hoverboard_restore_damage -= @s ff_hoverboard_damage_6
execute if score @s ff_hoverboard_restore_slot matches 6 if items entity @s hotbar.6 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.6 loot fossil_frights:items/creators/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 6 unless items entity @s hotbar.6 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.6 loot fossil_frights:items/anvil/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 6 if entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.6 fossil_frights:items/hoverboard/durability/restore_active
execute if score @s ff_hoverboard_restore_slot matches 6 unless entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.6 fossil_frights:items/hoverboard/durability/restore_inactive
execute if score @s ff_hoverboard_restore_slot matches 7 run scoreboard players set @s ff_hoverboard_restore_damage 3000
execute if score @s ff_hoverboard_restore_slot matches 7 run scoreboard players operation @s ff_hoverboard_restore_damage -= @s ff_hoverboard_damage_7
execute if score @s ff_hoverboard_restore_slot matches 7 if items entity @s hotbar.7 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.7 loot fossil_frights:items/creators/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 7 unless items entity @s hotbar.7 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.7 loot fossil_frights:items/anvil/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 7 if entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.7 fossil_frights:items/hoverboard/durability/restore_active
execute if score @s ff_hoverboard_restore_slot matches 7 unless entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.7 fossil_frights:items/hoverboard/durability/restore_inactive
execute if score @s ff_hoverboard_restore_slot matches 8 run scoreboard players set @s ff_hoverboard_restore_damage 3000
execute if score @s ff_hoverboard_restore_slot matches 8 run scoreboard players operation @s ff_hoverboard_restore_damage -= @s ff_hoverboard_damage_8
execute if score @s ff_hoverboard_restore_slot matches 8 if items entity @s hotbar.8 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.8 loot fossil_frights:items/creators/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 8 unless items entity @s hotbar.8 *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s hotbar.8 loot fossil_frights:items/anvil/hoverboard
execute if score @s ff_hoverboard_restore_slot matches 8 if entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.8 fossil_frights:items/hoverboard/durability/restore_active
execute if score @s ff_hoverboard_restore_slot matches 8 unless entity @s[tag=ff_hoverboard_keep_active] run item modify entity @s hotbar.8 fossil_frights:items/hoverboard/durability/restore_inactive
