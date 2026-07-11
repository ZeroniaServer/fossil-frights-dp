scoreboard players set #vending_owned ff_hazard_rng 0
execute if predicate fossil_frights:player/inventory/drinks/veloci_tea run scoreboard players add #vending_owned ff_hazard_rng 1
execute if predicate fossil_frights:player/inventory/drinks/pteranadon_twist run scoreboard players add #vending_owned ff_hazard_rng 1
execute if predicate fossil_frights:player/inventory/drinks/raptor_rush run scoreboard players add #vending_owned ff_hazard_rng 1
execute if predicate fossil_frights:player/inventory/drinks/bubbly_bat run scoreboard players add #vending_owned ff_hazard_rng 1
execute if predicate fossil_frights:player/inventory/drinks/jurassic_juice run scoreboard players add #vending_owned ff_hazard_rng 1
execute if predicate fossil_frights:player/inventory/drinks/fossil_fizz run scoreboard players add #vending_owned ff_hazard_rng 1
execute if score #vending_owned ff_hazard_rng matches 6 run return run function fossil_frights:animations/dinocoin/vending_machine/roll_base_any
execute store result score #vending_roll ff_hazard_rng run random value 1..6
execute if score #vending_roll ff_hazard_rng matches 1 if predicate fossil_frights:player/inventory/drinks/veloci_tea run return run function fossil_frights:animations/dinocoin/vending_machine/roll_base
execute if score #vending_roll ff_hazard_rng matches 1 run return run function fossil_frights:animations/dinocoin/vending_machine/drinks/veloci_tea
execute if score #vending_roll ff_hazard_rng matches 2 if predicate fossil_frights:player/inventory/drinks/pteranadon_twist run return run function fossil_frights:animations/dinocoin/vending_machine/roll_base
execute if score #vending_roll ff_hazard_rng matches 2 run return run function fossil_frights:animations/dinocoin/vending_machine/drinks/pteranadon_twist
execute if score #vending_roll ff_hazard_rng matches 3 if predicate fossil_frights:player/inventory/drinks/raptor_rush run return run function fossil_frights:animations/dinocoin/vending_machine/roll_base
execute if score #vending_roll ff_hazard_rng matches 3 run return run function fossil_frights:animations/dinocoin/vending_machine/drinks/raptor_rush
execute if score #vending_roll ff_hazard_rng matches 4 if predicate fossil_frights:player/inventory/drinks/bubbly_bat run return run function fossil_frights:animations/dinocoin/vending_machine/roll_base
execute if score #vending_roll ff_hazard_rng matches 4 run return run function fossil_frights:animations/dinocoin/vending_machine/drinks/bubbly_bat
execute if score #vending_roll ff_hazard_rng matches 5 if predicate fossil_frights:player/inventory/drinks/jurassic_juice run return run function fossil_frights:animations/dinocoin/vending_machine/roll_base
execute if score #vending_roll ff_hazard_rng matches 5 run return run function fossil_frights:animations/dinocoin/vending_machine/drinks/jurassic_juice
execute if score #vending_roll ff_hazard_rng matches 6 if predicate fossil_frights:player/inventory/drinks/fossil_fizz run return run function fossil_frights:animations/dinocoin/vending_machine/roll_base
execute if score #vending_roll ff_hazard_rng matches 6 run return run function fossil_frights:animations/dinocoin/vending_machine/drinks/fossil_fizz
