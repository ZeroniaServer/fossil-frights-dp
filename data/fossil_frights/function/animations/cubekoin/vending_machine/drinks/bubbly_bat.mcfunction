function fossil_frights:animations/cubekoin/vending_machine/success_effects
execute positioned 26.5 81.5 16.5 run function fossil_frights:items/util/summon_item {nbt:{PickupDelay:10},loot_table:"fossil_frights:items/drinks/bubbly_bat"}
title @s actionbar {"translate":"ff.drink_purchased","color":"yellow","with":[{"translate":"ff.drink.bubbly_bat","color":"light_purple"}]}
