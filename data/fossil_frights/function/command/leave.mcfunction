execute if entity @s[tag=ff_active] run function fossil_frights:messages/leave/player_left
execute if entity @s[tag=ff_active] run function fossil_frights:game/end
execute if entity @s[tag=ff_active] run return 0
execute if entity @s[gamemode=spectator] run function fossil_frights:join/spectator_lobby_exit
execute if entity @s[gamemode=spectator] run return 0
execute unless entity @s[tag=ff_active] run function fossil_frights:messages/error/cannot_leave_not_active
execute unless entity @s[tag=ff_active] run return 0
