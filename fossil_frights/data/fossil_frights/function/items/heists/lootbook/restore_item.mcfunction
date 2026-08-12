execute if items entity @s weapon.mainhand *[custom_data~{ff_heist_lootbook_remainder:true}] run loot replace entity @s weapon.mainhand loot fossil_frights:items/heists/loot_book
execute if items entity @s weapon.offhand *[custom_data~{ff_heist_lootbook_remainder:true}] run loot replace entity @s weapon.offhand loot fossil_frights:items/heists/loot_book
tag @s remove ff_lootbook_restore_pending
