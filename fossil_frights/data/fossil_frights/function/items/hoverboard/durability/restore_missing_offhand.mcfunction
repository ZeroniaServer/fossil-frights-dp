scoreboard players set @s ff_hoverboard_restore_damage 3000
scoreboard players operation @s ff_hoverboard_restore_damage -= @s ff_hoverboard_damage_off
execute if items entity @s weapon.offhand *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s weapon.offhand loot fossil_frights:items/creators/hoverboard
execute unless items entity @s weapon.offhand *[custom_data~{ff_creator_hoverboard:true}] run loot replace entity @s weapon.offhand loot fossil_frights:items/anvil/hoverboard
item modify entity @s weapon.offhand fossil_frights:items/hoverboard/durability/restore_inactive
