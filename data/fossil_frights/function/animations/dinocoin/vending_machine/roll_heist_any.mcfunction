execute store result score #vending_roll ff_hazard_rng run random value 1..3
execute if score #vending_roll ff_hazard_rng matches 1 run return run function fossil_frights:animations/dinocoin/vending_machine/drinks/veloci_tea
execute if score #vending_roll ff_hazard_rng matches 2 run return run function fossil_frights:animations/dinocoin/vending_machine/drinks/raptor_rush
execute if score #vending_roll ff_hazard_rng matches 3 run return run function fossil_frights:animations/dinocoin/vending_machine/drinks/bubbly_bat
