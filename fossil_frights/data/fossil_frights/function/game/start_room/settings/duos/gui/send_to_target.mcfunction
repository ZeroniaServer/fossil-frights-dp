scoreboard players set $invite_found ff_gui 1
advancement grant @a[tag=ff_invite_caller,limit=1] only fossil_frights:02_achievements/team_player
scoreboard players add $invite_token ff_game_state 1
scoreboard players set $invite_pending ff_game_state 1
scoreboard players operation $invite_target ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation $invite_target ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation $invite_target ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation $invite_target ff_active_uuid_3 = @s ff_active_uuid_3
execute store result storage fossil_frights:invite token int 1 run scoreboard players get $invite_token ff_game_state
function fossil_frights:messages/duos/invite_received with storage fossil_frights:invite
function fossil_frights:messages/duos/invite_sent
