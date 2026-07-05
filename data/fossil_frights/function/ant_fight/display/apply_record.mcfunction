# Plugin-driven record from leaderboard.yml. Reads storage plugin_record {name,value}.
$scoreboard players set $ant_best_score ff_ant_display $(value)
scoreboard players set $ant_best_exists ff_ant_display 1
data modify storage fossil_frights:ant_fight best.name set from storage fossil_frights:ant_fight plugin_record.name
data modify storage fossil_frights:ant_fight best.profile.name set from storage fossil_frights:ant_fight plugin_record.name
function fossil_frights:ant_fight/display/rebuild
