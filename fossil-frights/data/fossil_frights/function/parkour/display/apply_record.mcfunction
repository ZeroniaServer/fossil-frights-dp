# Plugin-driven record from leaderboard.yml. Reads storage plugin_record {name,value}.
$scoreboard players set $parkour_best_time ff_parkour_display $(value)
scoreboard players set $parkour_best_exists ff_parkour_display 1
data modify storage fossil_frights:parkour best.name set from storage fossil_frights:parkour plugin_record.name
data modify storage fossil_frights:parkour best.profile.name set from storage fossil_frights:parkour plugin_record.name
function fossil_frights:parkour/display/rebuild
