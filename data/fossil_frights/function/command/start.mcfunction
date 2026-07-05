execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/already_active
execute if predicate fossil_frights:player/is_playing run return 0
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/cannot_start_while_spectating
execute if entity @s[gamemode=spectator] run return 0
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:temple_run/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
scoreboard players set $game_start_spawn_mode ff_game_state 0
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] run return run function fossil_frights:join/guard
execute unless predicate fossil_frights:player/is_playing run function fossil_frights:join/queue
