
tag @s add ff_join_random
execute store result score #join_random_roll ff_hazard_rng run random value 1..2
execute if score #join_random_roll ff_hazard_rng matches 1 run function fossil_frights:command/join_smart_guard
execute unless score #join_random_roll ff_hazard_rng matches 1 run function fossil_frights:command/join_smart_thief
tag @s remove ff_join_random
