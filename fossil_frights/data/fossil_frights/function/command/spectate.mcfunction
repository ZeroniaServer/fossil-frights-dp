execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run function fossil_frights:messages/error/spectating_disabled
execute if entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute unless entity @a[predicate=fossil_frights:player/is_playing,limit=1] run function fossil_frights:messages/error/no_active_player
execute unless entity @a[predicate=fossil_frights:player/is_playing,limit=1] run return 0
execute if predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/cannot_spectate_while_active
execute if predicate fossil_frights:player/is_playing run return 0
function fossil_frights:join/spectator
