
tag @s add ff_join_random
execute if score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 run scoreboard players set #join_random_guards ff_hazard_rng 0
execute if score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 run scoreboard players set #join_random_thieves ff_hazard_rng 0
execute if score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 as @a[team=ff_guard] run scoreboard players add #join_random_guards ff_hazard_rng 1
execute if score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 as @a[team=ff_thief] run scoreboard players add #join_random_thieves ff_hazard_rng 1
execute if score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 if score #join_random_guards ff_hazard_rng < #join_random_thieves ff_hazard_rng run function fossil_frights:command/join_smart_guard
execute if score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 if score #join_random_thieves ff_hazard_rng < #join_random_guards ff_hazard_rng run function fossil_frights:command/join_smart_thief
execute if score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 if score #join_random_guards ff_hazard_rng = #join_random_thieves ff_hazard_rng run execute store result score #join_random_roll ff_hazard_rng run random value 1..2
execute if score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 if score #join_random_guards ff_hazard_rng = #join_random_thieves ff_hazard_rng if score #join_random_roll ff_hazard_rng matches 1 run function fossil_frights:command/join_smart_guard
execute if score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 if score #join_random_guards ff_hazard_rng = #join_random_thieves ff_hazard_rng unless score #join_random_roll ff_hazard_rng matches 1 run function fossil_frights:command/join_smart_thief
execute unless score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 run execute store result score #join_random_roll ff_hazard_rng run random value 1..2
execute unless score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 if score #join_random_roll ff_hazard_rng matches 1 run function fossil_frights:command/join_smart_guard
execute unless score $heist_mode_active ff_game_state matches 1 if score $game_running ff_game_state matches 1 unless score #join_random_roll ff_hazard_rng matches 1 run function fossil_frights:command/join_smart_thief
execute unless score $game_running ff_game_state matches 1 run execute store result score #join_random_roll ff_hazard_rng run random value 1..2
execute unless score $game_running ff_game_state matches 1 if score #join_random_roll ff_hazard_rng matches 1 run function fossil_frights:command/join_smart_guard
execute unless score $game_running ff_game_state matches 1 unless score #join_random_roll ff_hazard_rng matches 1 run function fossil_frights:command/join_smart_thief
tag @s remove ff_join_random
