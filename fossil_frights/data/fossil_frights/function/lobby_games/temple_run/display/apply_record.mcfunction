# Plugin-driven record from leaderboard.yml. Reads storage plugin_record {uuid, name, value}. plugin_record is read-only.
$scoreboard players set $temple_run_best_time ff_temple_run_display $(value)
scoreboard players set $temple_run_best_exists ff_temple_run_display 1

# Only update name if the UUID changes. This allows the username to always be accurate to whatever that player's name was last time they joined the world (updated on session start).
execute store success score #uuid_changed ff_dummy run data modify storage fossil_frights:temple_run best.uuid set from storage fossil_frights:temple_run plugin_record.uuid
execute if score #uuid_changed ff_dummy matches 1 run data modify storage fossil_frights:temple_run best.name set from storage fossil_frights:temple_run plugin_record.name
data modify storage fossil_frights:temple_run best.profile.id set from storage fossil_frights:temple_run plugin_record.uuid

function fossil_frights:lobby_games/temple_run/display/rebuild
