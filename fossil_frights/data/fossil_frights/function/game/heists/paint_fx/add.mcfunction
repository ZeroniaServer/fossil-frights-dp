scoreboard players set @s ff_heist_paint_fx 200
function fossil_frights:game/heists/paint_fx/overlay_show

execute if items entity @s armor.feet * run item modify entity @s armor.feet fossil_frights:game/heists/add_paint
execute if items entity @s armor.legs * run item modify entity @s armor.legs fossil_frights:game/heists/add_paint
execute if items entity @s armor.chest * run item modify entity @s armor.chest fossil_frights:game/heists/add_paint
execute if items entity @s armor.head * run item modify entity @s armor.head fossil_frights:game/heists/add_paint

execute unless items entity @s armor.feet * run loot replace entity @s armor.feet loot fossil_frights:items/other/paint_armor/paint_boots
execute unless items entity @s armor.legs * run loot replace entity @s armor.legs loot fossil_frights:items/other/paint_armor/paint_leggings
execute unless items entity @s armor.chest * run loot replace entity @s armor.chest loot fossil_frights:items/other/paint_armor/paint_chestplate
execute unless items entity @s armor.head * run loot replace entity @s armor.head loot fossil_frights:items/other/paint_armor/paint_helmet
