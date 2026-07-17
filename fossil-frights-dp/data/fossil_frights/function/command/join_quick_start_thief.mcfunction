# Idle start: start game, enable heists, join thieves.
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/cannot_start_while_spectating
execute if entity @s[gamemode=spectator] run return 0
execute if entity @s[tag=ff_fade_tp_active] run return 0
function fossil_frights:join/guard/enter
function fossil_frights:game/heists/activate
function fossil_frights:join/thief
