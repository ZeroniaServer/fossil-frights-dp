execute unless predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/only_active_players_can_start_multiplayer_games
execute unless predicate fossil_frights:player/is_playing run return 0
execute if predicate fossil_frights:game_state/party_mode_active run return 0
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/must_invite_before_starting_game
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if score $day_current ff_day matches 1.. run function fossil_frights:messages/error/must_invite_before_starting_game
execute if score $day_current ff_day matches 1.. run return 0
execute if score $day_active ff_day matches 1 run function fossil_frights:messages/error/must_invite_before_starting_game
execute if score $day_active ff_day matches 1 run return 0
execute if score $party_member_count ff_game_state matches 2.. run function fossil_frights:messages/duos/party_full
execute if score $party_member_count ff_game_state matches 2.. run return 0
execute if score $invite_pending ff_game_state matches 1 run function fossil_frights:messages/duos/invite_already_sent
execute if score $invite_pending ff_game_state matches 1 run return 0
execute unless entity @a[tag=ff_plugin_invite_target,limit=1] run function fossil_frights:messages/duos/player_no_longer_online
execute unless entity @a[tag=ff_plugin_invite_target,limit=1] run return 0
data remove storage fossil_frights:invite selected
execute as @a[tag=ff_plugin_invite_target,limit=1] run function fossil_frights:player/util/write_username {to:"storage fossil_frights:invite selected.name"}
execute as @a[tag=ff_plugin_invite_target,limit=1] run execute store result storage fossil_frights:invite selected.u0 int 1 run scoreboard players get @s ff_active_uuid_0
execute as @a[tag=ff_plugin_invite_target,limit=1] run execute store result storage fossil_frights:invite selected.u1 int 1 run scoreboard players get @s ff_active_uuid_1
execute as @a[tag=ff_plugin_invite_target,limit=1] run execute store result storage fossil_frights:invite selected.u2 int 1 run scoreboard players get @s ff_active_uuid_2
execute as @a[tag=ff_plugin_invite_target,limit=1] run execute store result storage fossil_frights:invite selected.u3 int 1 run scoreboard players get @s ff_active_uuid_3
function fossil_frights:game/start_room/settings/duos/gui/try_send
