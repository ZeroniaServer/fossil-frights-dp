execute if score lava ff_hazard_active matches 1 run return 0
execute unless score $game_running ff_game_state matches 1 unless score $heist_round_active ff_game_state matches 1 run return 0
function fossil_frights:hazard/start/lava
scoreboard players set #lava_manual_cooldown ff_hazard_rng 40
