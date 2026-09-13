execute if items entity @s weapon.mainhand *[custom_data~{ff_dna:true},count=1] run return run loot replace entity @s weapon.mainhand loot fossil_frights:items/dna/velociraptor
execute if items entity @s weapon.mainhand *[custom_data~{ff_dna:true}] run item modify entity @s weapon.mainhand fossil_frights:deduct_1

execute unless items entity @s weapon.mainhand *[custom_data~{ff_dna:true}] if items entity @s weapon.offhand *[custom_data~{ff_dna:true},count=1] run return run loot replace entity @s weapon.offhand loot fossil_frights:items/dna/velociraptor
execute unless items entity @s weapon.mainhand *[custom_data~{ff_dna:true}] if items entity @s weapon.offhand *[custom_data~{ff_dna:true}] run item modify entity @s weapon.offhand fossil_frights:deduct_1

loot give @s loot fossil_frights:items/dna/velociraptor
