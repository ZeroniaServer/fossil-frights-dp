advancement revoke @s only fossil_frights:floods_shutoff_valve_click
execute if score #floods_valve_cooldown ff_hazard_rng matches 1.. run return 0
execute if score floods ff_hazard_active matches 1 run function fossil_frights:hazard/floods/clicked_shutoff
execute if score floods ff_hazard_active matches 1 run return 0
execute unless score $game_running ff_game_state matches 1 run function fossil_frights:hazard/floods/rotate_shutoff
execute unless score $game_running ff_game_state matches 1 run return 0
function fossil_frights:hazard/floods/clicked_start
