execute if score $party_member_count ff_game_state matches 2.. run function fossil_frights:messages/multiplayer/party_full
execute if score $party_member_count ff_game_state matches 2.. run return 0
scoreboard players set $run_multiplayer ff_game_state 1
scoreboard players set $invite_pending ff_game_state 0
function fossil_frights:game/party_mode/add_current
function fossil_frights:join/multiplayer/setup_invited_player
function fossil_frights:messages/multiplayer/invite_accepted
function fossil_frights:tasks/tracker/refresh

