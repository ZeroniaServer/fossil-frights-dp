execute store result score #vending_coin_count ff_hazard_rng run clear @s *[minecraft:custom_data~{itemID:"dinocoin"}] 0
execute if score #vending_coin_count ff_hazard_rng matches 1.. run function fossil_frights:animations/dinocoin/vending_machine/payment/pay
execute unless score #vending_coin_count ff_hazard_rng matches 1.. run function fossil_frights:animations/dinocoin/vending_machine/fail
