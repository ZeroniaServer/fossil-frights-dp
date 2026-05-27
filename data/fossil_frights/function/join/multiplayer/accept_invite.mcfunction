execute unless score $invite_pending ff_game_state matches 1 run function fossil_frights:messages/multiplayer/no_pending_invite
execute unless score $invite_pending ff_game_state matches 1 run return 0
execute unless score @s ff_invite_accept = $invite_token ff_game_state run function fossil_frights:messages/multiplayer/invite_expired
execute unless score @s ff_invite_accept = $invite_token ff_game_state run return 0
execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $active_set ff_game_state matches 1 run function fossil_frights:messages/error/no_active_player
execute unless score $active_set ff_game_state matches 1 run return 0
execute if score $day_current ff_day matches 1.. run function fossil_frights:messages/error/must_invite_before_starting_game
execute if score $day_current ff_day matches 1.. run return 0
execute if score $day_active ff_day matches 1 run function fossil_frights:messages/error/must_invite_before_starting_game
execute if score $day_active ff_day matches 1 run return 0
execute if score $party_member_count ff_game_state matches 2.. run function fossil_frights:messages/multiplayer/party_full
execute if score $party_member_count ff_game_state matches 2.. run return 0
execute if entity @s[tag=ff_active] run function fossil_frights:messages/error/already_active
execute if entity @s[tag=ff_active] run return 0
execute unless score @s ff_active_uuid_0 = $invite_target ff_active_uuid_0 run function fossil_frights:messages/multiplayer/not_your_invite
execute unless score @s ff_active_uuid_0 = $invite_target ff_active_uuid_0 run return 0
execute unless score @s ff_active_uuid_1 = $invite_target ff_active_uuid_1 run function fossil_frights:messages/multiplayer/not_your_invite
execute unless score @s ff_active_uuid_1 = $invite_target ff_active_uuid_1 run return 0
execute unless score @s ff_active_uuid_2 = $invite_target ff_active_uuid_2 run function fossil_frights:messages/multiplayer/not_your_invite
execute unless score @s ff_active_uuid_2 = $invite_target ff_active_uuid_2 run return 0
execute unless score @s ff_active_uuid_3 = $invite_target ff_active_uuid_3 run function fossil_frights:messages/multiplayer/not_your_invite
execute unless score @s ff_active_uuid_3 = $invite_target ff_active_uuid_3 run return 0
function fossil_frights:game/party_mode/add_invited_player

