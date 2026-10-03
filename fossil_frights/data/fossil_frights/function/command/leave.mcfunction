# Public leave route.
tag @s remove ff_day_tutorial_prompt_open
tag @s remove ff_day_tutorial_prompt_button_latched
tag @s remove ff_tutorial_pending
scoreboard players set @s ff_tutorial_prompt 0
execute if entity @s[tag=ff_tutorial] run return run function fossil_frights:tutorial/stop_silent
execute if entity @s[tag=ff_camera_remote_active] run function fossil_frights:items/heists/camera_remote/exit
execute if entity @s[tag=ff_forced_spectate] run function fossil_frights:cameras/forced_spectate_exit
execute unless entity @s[tag=ff_game_end_cleanup] unless score $victory_complete ff_game_state matches 1 if predicate fossil_frights:player/is_playing run function fossil_frights:messages/leave/player_left
execute if predicate fossil_frights:player/is_playing run return run function fossil_frights:command/leave/active
execute if entity @s[gamemode=spectator] run return run function fossil_frights:command/leave/spectator
execute if entity @s[tag=ff_ant_fight] run tag @s add ff_ant_fight_leave
execute if entity @s[tag=ff_ant_fight] run return run function fossil_frights:lobby_games/ant_fight/end
execute if score @s ff_parkour_running matches 1.. run tag @s add ff_parkour_leave
execute if score @s ff_parkour_running matches 1.. run return run function fossil_frights:lobby_games/parkour/end
execute if predicate fossil_frights:player/is_playing_temple_run run tag @s add ff_temple_run_leave
execute if predicate fossil_frights:player/is_playing_temple_run run return run function fossil_frights:lobby_games/temple_run/end
execute if entity @s[tag=ff_sulfur_strikers] run return run function fossil_frights:lobby_games/stop_all
execute if entity @s[tag=ff_in_queue] run function fossil_frights:messages/queue/left
execute if entity @s[tag=ff_in_queue] run return run function fossil_frights:join/queue/remove_player
function fossil_frights:messages/error/cannot_leave_not_active
