clear @s *[!custom_data~{ff_heist_rules:{keep_on_thief_death:true}}]

execute if score @s ff_heist_paint_fx matches 1.. unless items entity @s armor.feet * run loot replace entity @s armor.feet 1 loot fossil_frights:items/heists/paint_armor/paint_boots
execute if score @s ff_heist_paint_fx matches 1.. unless items entity @s armor.legs * run loot replace entity @s armor.legs 1 loot fossil_frights:items/heists/paint_armor/paint_leggings
execute if score @s ff_heist_paint_fx matches 1.. unless items entity @s armor.chest * run loot replace entity @s armor.chest 1 loot fossil_frights:items/heists/paint_armor/paint_chestplate
execute if score @s ff_heist_paint_fx matches 1.. unless items entity @s armor.head * run loot replace entity @s armor.head 1 loot fossil_frights:items/heists/paint_armor/paint_helmet

execute if items entity @s armor.head *[custom_data~{itemID:"invisimask"}] run item modify entity @s armor.head fossil_frights:game/heists/invisimask/loot_bag/off
