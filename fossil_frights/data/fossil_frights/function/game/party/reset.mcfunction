kill @e[type=minecraft:marker,tag=ff_run_member]
tag @a[team=ff_guard] remove ff_muted_chat
tag @a remove ff_run_sync_source
tag @a remove ff_run_login_source
tag @a remove ff_run_remove_source
tag @a remove ff_title_first
scoreboard players set $run_multiplayer ff_game_state 0
scoreboard players set $party_mode_active ff_game_state 0
scoreboard players set $party_button_lock ff_game_state 0
scoreboard players set $party_member_count ff_game_state 0
scoreboard players set $party_sync_grace ff_game_state 0
scoreboard players set $active_online ff_game_state 0
scoreboard players set $login_is_run_member ff_game_state 0
scoreboard players set $invite_pending ff_game_state 0
scoreboard players set $invite_token ff_game_state 0
scoreboard players set $invite_found ff_gui 0
scoreboard players set $invite_uuid_0 ff_active_uuid_0 0
scoreboard players set $invite_uuid_1 ff_active_uuid_1 0
scoreboard players set $invite_uuid_2 ff_active_uuid_2 0
scoreboard players set $invite_uuid_3 ff_active_uuid_3 0
scoreboard players set $invite_target ff_active_uuid_0 0
scoreboard players set $invite_target ff_active_uuid_1 0
scoreboard players set $invite_target ff_active_uuid_2 0
scoreboard players set $invite_target ff_active_uuid_3 0
data remove storage fossil_frights:invite selected
data remove storage fossil_frights:invite token
