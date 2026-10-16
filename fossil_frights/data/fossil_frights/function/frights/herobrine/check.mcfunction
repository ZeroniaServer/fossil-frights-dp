# Track Herobrine roll state
execute if score $herobrine_state ff_game_state matches 4.. run return 0
execute if score $day_current ff_day matches 4 if score $day_timer ff_day matches 1200..1239 if score $herobrine_state ff_game_state matches 0 run function fossil_frights:frights/herobrine/roll
execute if score $day_current ff_day matches 4 if score $day_timer ff_day matches 2400..2439 if score $herobrine_state ff_game_state matches 1 run function fossil_frights:frights/herobrine/roll
execute if score $day_current ff_day matches 4 if score $day_timer ff_day matches 3600..3639 if score $herobrine_state ff_game_state matches 2 run function fossil_frights:frights/herobrine/roll
