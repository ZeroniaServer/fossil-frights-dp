execute store result score #vending_coin_count ff_hazard_rng run clear @s minecraft:gold_ingot 0
execute if score #vending_coin_count ff_hazard_rng matches 1.. run function fossil_frights:animations/vending_machine/pay
execute unless score #vending_coin_count ff_hazard_rng matches 1.. run function fossil_frights:animations/vending_machine/fail
