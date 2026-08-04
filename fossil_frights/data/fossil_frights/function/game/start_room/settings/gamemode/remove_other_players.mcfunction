tag @s add ff_settings_mode_owner
execute as @a[team=ff_thief] run function fossil_frights:player/lobby_reset_active
execute as @a[team=ff_guard,tag=!ff_settings_mode_owner] run function fossil_frights:player/lobby_reset_active
tag @a remove ff_settings_mode_owner
scoreboard players set $invite_pending ff_game_state 0
scoreboard players set $party_member_count ff_game_state 1
