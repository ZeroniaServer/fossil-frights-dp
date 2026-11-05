execute if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"icy_sherd"}] run swing @s mainhand
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"icy_sherd"}] run swing @s offhand

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"icy_sherd"}] run return run item modify entity @s weapon.mainhand fossil_frights:deduct_1
execute if items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"icy_sherd"}] run return run item modify entity @s weapon.offhand fossil_frights:deduct_1
clear @s *[minecraft:custom_data~{itemID:"icy_sherd"}] 1
