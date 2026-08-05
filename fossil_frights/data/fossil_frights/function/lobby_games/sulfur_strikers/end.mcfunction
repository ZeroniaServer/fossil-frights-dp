function fossil_frights:lobby_games/sulfur_strikers/music/stop
tag @s remove ff_sulfur_strikers
tag @s remove ff_fade_tp_active
scoreboard players set @s ff_tp_action 0
scoreboard players set @s ff_tp_delay 0
tp @s 45 77 -62 240 0
gamemode adventure @s
function fossil_frights:join/lobby
function fossil_frights:player/effects/lobby_reset
function fossil_frights:items/plushies/restore
