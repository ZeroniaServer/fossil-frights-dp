execute if entity @s[tag=ff_active] run return run function fossil_frights:command/leave_active
execute if entity @s[gamemode=spectator] run return run function fossil_frights:command/leave_spectator
execute unless entity @s[tag=ff_active] run function fossil_frights:messages/error/cannot_leave_not_active
execute unless entity @s[tag=ff_active] run return 0
