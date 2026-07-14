advancement revoke @s only fossil_frights:parkour_teleporter_click
execute unless entity @s[gamemode=adventure] run return 0
execute if entity @s[tag=ff_fade_tp_active] run return 0
function fossil_frights:util/fade/queue/parkour_teleporter
