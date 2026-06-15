function fossil_frights:animations/cubekoin/vending_machine/success_effects
execute positioned 26.5 81.5 16.5 run function fossil_frights:util/summon_item {nbt:{PickupDelay:10},loot_table:"fossil_frights:items/drinks/fossil_fizz"}
title @s actionbar [{"text":"Purchased: ","color":"yellow"},{"text":"Fossil Fizz","color":"aqua"}]
