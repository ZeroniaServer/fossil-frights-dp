execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute unless entity @a[tag=ff_active,limit=1] run function fossil_frights:messages/error/no_active_player
execute unless entity @a[tag=ff_active,limit=1] run return 0
execute if entity @s[tag=ff_active] run function fossil_frights:messages/error/cannot_spectate_while_active
execute if entity @s[tag=ff_active] run return 0
function fossil_frights:join/spectator_enter
