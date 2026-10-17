execute unless data storage fossil_frights:party_record pending_members[0] run return 0
tag @e[type=minecraft:marker,tag=ff_lb_party_record_member_new] remove ff_lb_party_record_member_new
summon minecraft:marker 0 -64 0 {Tags:["ff_lb_party_record_member","ff_lb_party_record_member_new"]}
data modify entity @e[type=minecraft:marker,tag=ff_lb_party_record_member_new,limit=1] data.name set from storage fossil_frights:party_record pending_members[0].name
data modify entity @e[type=minecraft:marker,tag=ff_lb_party_record_member_new,limit=1] data.uuid set from storage fossil_frights:party_record pending_members[0].uuid
tag @e[type=minecraft:marker,tag=ff_lb_party_record_member_new] remove ff_lb_party_record_member_new
data remove storage fossil_frights:party_record pending_members[0]
function fossil_frights:leaderboards/party_record/apply_record_member
