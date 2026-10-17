# Apply party record from leaderboard.yml.
# `storage fossil_frights:party_record plugin_record` is READ-ONLY.
execute unless data storage fossil_frights:party_record plugin_record.value run return 0
execute unless data storage fossil_frights:party_record plugin_record.members[0] run return 0
$scoreboard players set #party_record_incoming_time ff_lb_calc $(value)
execute if score #party_record_incoming_time ff_lb_calc matches ..0 run return 0
kill @e[type=minecraft:marker,tag=ff_lb_party_record_member]
scoreboard players operation $party_record_time ff_lb_calc = #party_record_incoming_time ff_lb_calc
data modify storage fossil_frights:party_record pending_members set from storage fossil_frights:party_record plugin_record.members
function fossil_frights:leaderboards/party_record/apply_record_member
data remove storage fossil_frights:party_record pending_members
function fossil_frights:leaderboards/display/update
