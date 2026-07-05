execute if entity @s[tag=ff_tutorial] run return run function fossil_frights:tutorial/stop_silent
execute if predicate fossil_frights:player/is_playing run return run function fossil_frights:command/leave_active
execute if entity @s[gamemode=spectator] run return run function fossil_frights:command/leave_spectator
execute unless predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/cannot_leave_not_active
execute unless predicate fossil_frights:player/is_playing run return 0
