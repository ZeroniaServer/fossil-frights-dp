execute unless entity @s[team=ff_guard] run return 0
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 0 run return 0
execute unless score $day_current ff_day matches 0 run return 0
return 1
