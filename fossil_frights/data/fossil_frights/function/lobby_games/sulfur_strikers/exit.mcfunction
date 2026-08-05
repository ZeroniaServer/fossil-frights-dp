function fossil_frights:lobby_games/sulfur_strikers/music/stop
tag @s remove ff_sulfur_strikers
tag @s remove ff_fade_tp_active
scoreboard players set @s ff_tp_action 0
scoreboard players set @s ff_tp_delay 0
tp @s 0 80 0 0 0
spawnpoint @s 0 80 0
gamemode adventure @s
function fossil_frights:join/lobby
function fossil_frights:player/effects/lobby_reset
function fossil_frights:items/plushies/restore
