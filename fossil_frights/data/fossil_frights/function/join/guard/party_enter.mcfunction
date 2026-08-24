execute unless predicate fossil_frights:game_state/party_mode_active run return 0
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if score $victory_complete ff_game_state matches 1 run function fossil_frights:messages/error/game_in_progress
execute if score $victory_complete ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_guard] run function fossil_frights:join/guard
function fossil_frights:game/party/add_current_if_missing
execute if score $party_current_member ff_game_state matches 0 run function fossil_frights:messages/duos/party_joined
execute as @s run function fossil_frights:game/party/setup_current_player
scoreboard players set @s ff_join_cooldown 40
