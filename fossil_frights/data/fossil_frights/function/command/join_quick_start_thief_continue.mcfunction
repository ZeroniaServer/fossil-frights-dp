execute if entity @s[tag=ff_fade_tp_active] unless score @s ff_tp_action matches 0 run return 0
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $heist_mode_active ff_game_state matches 1 run function fossil_frights:game/heists/activate
function fossil_frights:join/thief
tag @s remove ff_quick_start_thief
