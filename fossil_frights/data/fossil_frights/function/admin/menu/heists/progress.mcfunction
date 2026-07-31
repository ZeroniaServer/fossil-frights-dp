execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute if score $heist_round_active ff_game_state matches 1 run function fossil_frights:admin/menu/heists/show
execute if score $heist_round_active ff_game_state matches 1 run return 0
function fossil_frights:admin/menu/mark_modified
scoreboard players set $heist_admin_bypass_team_check ff_game_state 1
function fossil_frights:game/heists/start_round_unchecked
