execute unless predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/only_active_players_can_start_multiplayer_games
execute unless predicate fossil_frights:player/is_playing run return 0
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_active ff_day matches 1 run return 0
execute if score $day_current ff_day matches 1.. run return 0
execute if score $party_member_count ff_game_state matches 2.. run function fossil_frights:messages/duos/party_full
execute if score $party_member_count ff_game_state matches 2.. run return 0
execute if score $invite_pending ff_game_state matches 1 run function fossil_frights:messages/duos/invite_already_sent
execute if score $invite_pending ff_game_state matches 1 run return 0
scoreboard players operation $invite_slot ff_gui = @s ff_invite_sel
scoreboard players remove $invite_slot ff_gui 1
execute store result storage fossil_frights:invite selected_slot int 1 run scoreboard players get $invite_slot ff_gui
data remove storage fossil_frights:invite selected
function fossil_frights:game/start_room/settings/duos/gui/set_selected with storage fossil_frights:invite
execute unless data storage fossil_frights:invite selected run function fossil_frights:messages/duos/player_no_longer_online
execute unless data storage fossil_frights:invite selected run return 0
function fossil_frights:game/start_room/settings/duos/gui/try_send
