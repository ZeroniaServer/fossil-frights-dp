execute if entity @s[tag=ff_active] run function fossil_frights:messages/error/already_active
execute if entity @s[tag=ff_active] run return 0
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/cannot_start_while_spectating
execute if entity @s[gamemode=spectator] run return 0
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 unless entity @a[tag=ff_in_queue] run function fossil_frights:join/active_enter
execute unless entity @s[tag=ff_active] run function fossil_frights:join/queue_enter
