execute store result score #forklift_coin_count ff_game_state run clear @s minecraft:gold_ingot 0
execute if score #forklift_coin_count ff_game_state matches 1.. run function fossil_frights:animations/forklift/pay
execute unless score #forklift_coin_count ff_game_state matches 1.. run function fossil_frights:animations/forklift/fail
