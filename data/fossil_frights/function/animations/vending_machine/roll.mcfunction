execute store result score #vending_roll ff_hazard_rng run random value 1..6
execute if score #vending_roll ff_hazard_rng matches 1 run function fossil_frights:animations/vending_machine/drinks/veloci_tea
execute if score #vending_roll ff_hazard_rng matches 2 run function fossil_frights:animations/vending_machine/drinks/pteranadon_twist
execute if score #vending_roll ff_hazard_rng matches 3 run function fossil_frights:animations/vending_machine/drinks/raptor_rush
execute if score #vending_roll ff_hazard_rng matches 4 run function fossil_frights:animations/vending_machine/drinks/bubbly_bat
execute if score #vending_roll ff_hazard_rng matches 5 run function fossil_frights:animations/vending_machine/drinks/jurassic_juice
execute if score #vending_roll ff_hazard_rng matches 6 run function fossil_frights:animations/vending_machine/drinks/fossil_fizz
