execute store result score #herobrine_roll ff_game_state run random value 1..2
execute if score #herobrine_roll ff_game_state matches 1 run function fossil_frights:frights/herobrine/trigger
execute unless score #herobrine_roll ff_game_state matches 1 run scoreboard players add $herobrine_state ff_game_state 1
