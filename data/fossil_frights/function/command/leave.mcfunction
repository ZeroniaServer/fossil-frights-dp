execute unless entity @s[tag=ff_active] run function fossil_frights:messages/error/cannot_leave_not_active
execute unless entity @s[tag=ff_active] run return 0
function fossil_frights:messages/leave/player_left
function fossil_frights:game/end
