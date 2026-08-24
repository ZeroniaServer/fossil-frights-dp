execute if score $victory_complete ff_game_state matches 1 run function fossil_frights:messages/error/game_in_progress
execute if score $victory_complete ff_game_state matches 1 run return 0
execute unless predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:messages/error/heists_mode_required_to_join_team
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/heists_mode_required_to_join_team
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if score $heist_round_active ff_game_state matches 1.. run function fossil_frights:messages/error/game_in_progress
execute if score $heist_round_active ff_game_state matches 1.. run return 0
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/cannot_join_heist_team_while_spectating
execute if entity @s[gamemode=spectator] run return 0
execute if entity @s[tag=ff_fade_tp_active] unless entity @s[tag=ff_quick_start_heists_assigning] unless entity @s[tag=ff_join_start_heists] run return 0
execute if score @s ff_join_cooldown matches 1.. run return 0
execute if entity @s[team=ff_thief] run function fossil_frights:messages/error/already_on_team
execute if entity @s[team=ff_thief] run return 0
function fossil_frights:join/thief
