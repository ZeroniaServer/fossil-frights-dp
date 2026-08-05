# Public leave route.
execute if entity @s[tag=ff_tutorial] run return run function fossil_frights:tutorial/stop_silent
execute if entity @s[tag=ff_in_queue] run return run function fossil_frights:join/queue/remove_player
execute if predicate fossil_frights:player/is_playing run return run function fossil_frights:command/leave_active
execute if entity @s[gamemode=spectator] run return run function fossil_frights:command/leave_spectator
execute if entity @s[tag=ff_ant_fight] run return run function fossil_frights:ant_fight/exit
execute if score @s ff_parkour_running matches 1.. run return run function fossil_frights:parkour/end
execute if score @s ff_temple_run_running matches 1.. run return run function fossil_frights:temple_run/end
function fossil_frights:messages/error/cannot_leave_not_active
