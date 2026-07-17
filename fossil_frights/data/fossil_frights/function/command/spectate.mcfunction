execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute unless entity @a[predicate=fossil_frights:player/is_playing,limit=1] run function fossil_frights:messages/error/no_active_player
execute unless entity @a[predicate=fossil_frights:player/is_playing,limit=1] run return 0
execute if predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/cannot_spectate_while_active
execute if predicate fossil_frights:player/is_playing run return 0
function fossil_frights:join/spectator
