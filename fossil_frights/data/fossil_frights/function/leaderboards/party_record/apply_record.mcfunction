# Apply party record from leaderboard.yml.
# `storage fossil_frights:party_record plugin_record` is READ-ONLY.
kill @e[type=minecraft:marker,tag=ff_lb_party_record_member]
$scoreboard players set $party_record_time ff_lb_calc $(value)
data modify storage fossil_frights:party_record pending_members set from storage fossil_frights:party_record plugin_record.members
function fossil_frights:leaderboards/party_record/apply_record_member
data remove storage fossil_frights:party_record pending_members
function fossil_frights:leaderboards/display/update
function fossil_frights:leaderboards/party_record/render
