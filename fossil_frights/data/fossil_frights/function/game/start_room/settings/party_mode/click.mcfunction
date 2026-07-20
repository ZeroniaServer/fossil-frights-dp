# Button API entrypoint: opens the existing Party Mode confirmation dialog for an eligible guard.
execute unless entity @s[team=ff_guard] run return 0
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 0 run return 0
execute unless score $day_current ff_day matches 0 run return 0
execute if score $party_mode_active ff_game_state matches 1 run return 0
execute if score $heist_mode_active ff_game_state matches 1 run return 0
execute if score $party_button_lock ff_game_state matches 1.. run return 0
function fossil_frights:messages/settings/party_mode_dialog
