# Random team, but weighted to balance the current guard/thief counts (50/50 only when even).
tag @s add ff_join_random
scoreboard players set #jr_guards ff_hazard_rng 0
scoreboard players set #jr_thieves ff_hazard_rng 0
execute as @a[team=ff_guard,tag=!ff_join_random] run scoreboard players add #jr_guards ff_hazard_rng 1
execute as @a[team=ff_thief,tag=!ff_join_random] run scoreboard players add #jr_thieves ff_hazard_rng 1
execute store result score #join_random_roll ff_hazard_rng run random value 1..2
execute if score #jr_guards ff_hazard_rng < #jr_thieves ff_hazard_rng run scoreboard players set #join_random_roll ff_hazard_rng 1
execute if score #jr_thieves ff_hazard_rng < #jr_guards ff_hazard_rng run scoreboard players set #join_random_roll ff_hazard_rng 2
execute if score #join_random_roll ff_hazard_rng matches 1 run function fossil_frights:command/join_smart_guard
execute unless score #join_random_roll ff_hazard_rng matches 1 run function fossil_frights:command/join_smart_thief
tag @s remove ff_join_random
