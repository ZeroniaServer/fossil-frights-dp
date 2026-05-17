$data remove storage fossil_frights:leaderboards entries[{uuid:[I;$(uuid0),$(uuid1),$(uuid2),$(uuid3)]}]
$data remove storage fossil_frights:leaderboards entries[{name:"$(name)"}]
data modify storage fossil_frights:leaderboards candidate set from storage fossil_frights:leaderboards plugin_entry
data remove storage fossil_frights:leaderboards candidate.uuid0
data remove storage fossil_frights:leaderboards candidate.uuid1
data remove storage fossil_frights:leaderboards candidate.uuid2
data remove storage fossil_frights:leaderboards candidate.uuid3
execute store result score $lb_candidate_time ff_lb_calc run data get storage fossil_frights:leaderboards candidate.top_time
execute store result score $lb_candidate_day ff_lb_calc run data get storage fossil_frights:leaderboards candidate.top_day
function fossil_frights:leaderboards/cache/insert_candidate
