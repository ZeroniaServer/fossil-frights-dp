advancement revoke @s only fossil_frights:multiplayer_click
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_active ff_day matches 1 run return 0
function fossil_frights:game/settings/multiplayer/gui/open
