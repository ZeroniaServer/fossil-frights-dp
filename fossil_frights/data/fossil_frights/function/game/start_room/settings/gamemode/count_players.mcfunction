scoreboard players set $settings_active_players ff_game_state 0
execute as @a[team=ff_guard] run scoreboard players add $settings_active_players ff_game_state 1
execute as @a[team=ff_thief] run scoreboard players add $settings_active_players ff_game_state 1
