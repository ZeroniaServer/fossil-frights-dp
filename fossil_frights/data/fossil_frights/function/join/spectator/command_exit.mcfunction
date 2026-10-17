function fossil_frights:cameras/clear_posteffect
tag @s remove ff_forced_spectate
function fossil_frights:join/lobby
gamemode adventure @s[predicate=!fossil_frights:player/team/dev_mode]
clear @s[predicate=!fossil_frights:player/team/dev_mode]
attribute @s[predicate=!fossil_frights:player/team/dev_mode] minecraft:scale base reset
stopsound @s music fossil_frights:ff_night_shift
stopsound @s master fossil_frights:ff_night_shift
stopsound @s record fossil_frights:ff_night_shift
function fossil_frights:player/effects/lobby_reset
scoreboard players set @s ff_tp_action 0
scoreboard players set @s ff_tp_delay 0
tag @s remove ff_fade_tp_active
