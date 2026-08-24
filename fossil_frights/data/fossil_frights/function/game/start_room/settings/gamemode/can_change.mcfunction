execute unless entity @s[team=ff_guard] run return 0
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if score $victory_complete ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 0 run return 0
execute unless score $day_current ff_day matches 0 run return 0
execute if score $heist_round_active ff_game_state matches 1.. run return 0
return 1
