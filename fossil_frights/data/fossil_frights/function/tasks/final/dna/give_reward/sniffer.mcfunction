execute if items entity @s weapon.mainhand *[custom_data~{itemID:"microfiber_cloth"},count=1] run return run loot replace entity @s weapon.mainhand loot fossil_frights:items/dna/sniffer
execute if items entity @s weapon.mainhand *[custom_data~{itemID:"microfiber_cloth"}] run item modify entity @s weapon.mainhand fossil_frights:deduct_1

execute unless items entity @s weapon.mainhand *[custom_data~{itemID:"microfiber_cloth"}] if items entity @s weapon.offhand *[custom_data~{itemID:"microfiber_cloth"},count=1] run return run loot replace entity @s weapon.offhand loot fossil_frights:items/dna/sniffer
execute unless items entity @s weapon.mainhand *[custom_data~{itemID:"microfiber_cloth"}] if items entity @s weapon.offhand *[custom_data~{itemID:"microfiber_cloth"}] run item modify entity @s weapon.offhand fossil_frights:deduct_1

loot give @s loot fossil_frights:items/dna/sniffer
