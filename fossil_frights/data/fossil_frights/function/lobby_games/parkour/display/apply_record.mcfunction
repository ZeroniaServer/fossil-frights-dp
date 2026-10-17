# Plugin-driven record from leaderboard.yml. Reads storage plugin_record {uuid, name, value}. plugin_record is read-only.
$scoreboard players set $parkour_best_time ff_parkour_display $(value)
scoreboard players set $parkour_best_exists ff_parkour_display 1

# Only update name if the UUID changes. This allows the username to always be accurate to whatever that player's name was last time they joined the world (updated on session start).
execute store success score #uuid_changed ff_dummy run data modify storage fossil_frights:parkour best.uuid set from storage fossil_frights:parkour plugin_record.uuid
execute if score #uuid_changed ff_dummy matches 1 run data modify storage fossil_frights:parkour best.name set from storage fossil_frights:parkour plugin_record.name
data modify storage fossil_frights:parkour best.profile.id set from storage fossil_frights:parkour plugin_record.uuid

function fossil_frights:lobby_games/parkour/display/rebuild
