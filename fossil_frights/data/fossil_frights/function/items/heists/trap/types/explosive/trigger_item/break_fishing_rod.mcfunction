execute at @s run playsound minecraft:entity.item.break player @a ~ ~ ~ 0.6
execute at @s anchored eyes rotated ~ 0 run particle minecraft:item{item:"minecraft:fishing_rod"} ^ ^-0.5 ^0.5 0.1 0.1 0.1 0.1 5

execute if items entity @s weapon.mainhand minecraft:fishing_rod run return run item modify entity @s weapon.mainhand fossil_frights:deduct_1
execute if items entity @s weapon.offhand minecraft:fishing_rod run return run item modify entity @s weapon.offhand fossil_frights:deduct_1
return run clear @s minecraft:fishing_rod 1
