# Plugin-driven record from leaderboard.yml. Reads storage plugin_record {name,value}.
$scoreboard players set $temple_run_best_time ff_temple_run_display $(value)
scoreboard players set $temple_run_best_exists ff_temple_run_display 1
data modify storage fossil_frights:temple_run best.name set from storage fossil_frights:temple_run plugin_record.name
data modify storage fossil_frights:temple_run best.profile.name set from storage fossil_frights:temple_run plugin_record.name
function fossil_frights:temple_run/display/rebuild
