scoreboard players set #vending_owned ff_hazard_rng 0
execute if predicate fossil_frights:player/inventory/drinks/veloci_tea run scoreboard players add #vending_owned ff_hazard_rng 1
execute if predicate fossil_frights:player/inventory/drinks/raptor_rush run scoreboard players add #vending_owned ff_hazard_rng 1
execute if predicate fossil_frights:player/inventory/drinks/bubbly_bat run scoreboard players add #vending_owned ff_hazard_rng 1
execute if score #vending_owned ff_hazard_rng matches 3 run return run function fossil_frights:animations/cubekoin/vending_machine/roll_heist_any
execute store result score #vending_roll ff_hazard_rng run random value 1..3
execute if score #vending_roll ff_hazard_rng matches 1 if predicate fossil_frights:player/inventory/drinks/veloci_tea run return run function fossil_frights:animations/cubekoin/vending_machine/roll_heist
execute if score #vending_roll ff_hazard_rng matches 1 run return run function fossil_frights:animations/cubekoin/vending_machine/drinks/veloci_tea
execute if score #vending_roll ff_hazard_rng matches 2 if predicate fossil_frights:player/inventory/drinks/raptor_rush run return run function fossil_frights:animations/cubekoin/vending_machine/roll_heist
execute if score #vending_roll ff_hazard_rng matches 2 run return run function fossil_frights:animations/cubekoin/vending_machine/drinks/raptor_rush
execute if score #vending_roll ff_hazard_rng matches 3 if predicate fossil_frights:player/inventory/drinks/bubbly_bat run return run function fossil_frights:animations/cubekoin/vending_machine/roll_heist
execute if score #vending_roll ff_hazard_rng matches 3 run return run function fossil_frights:animations/cubekoin/vending_machine/drinks/bubbly_bat
