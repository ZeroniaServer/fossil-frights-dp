scoreboard players set $settings_active_players ff_game_state 0
execute as @a[predicate=fossil_frights:player/team/guard] run scoreboard players add $settings_active_players ff_game_state 1
execute as @a[predicate=fossil_frights:player/team/thief] run scoreboard players add $settings_active_players ff_game_state 1
