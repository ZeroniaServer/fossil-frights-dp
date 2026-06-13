execute store result score #vending_coin_count ff_hazard_rng run clear @s *[minecraft:custom_data~{itemID:"cubekoin"}] 0
execute if score #vending_coin_count ff_hazard_rng matches 1.. run function fossil_frights:animations/cubekoin/vending_machine/payment/pay
execute unless score #vending_coin_count ff_hazard_rng matches 1.. run function fossil_frights:animations/cubekoin/vending_machine/fail
