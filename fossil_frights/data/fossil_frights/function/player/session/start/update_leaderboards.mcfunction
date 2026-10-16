$data modify storage fossil_frights:leaderboards entries[{uuid:$(UUID)}].name set from storage fossil_frights:session player_name
$data modify storage fossil_frights:ant_fight best{uuid:$(UUID)}.name set from storage fossil_frights:session player_name
$data modify storage fossil_frights:parkour best{uuid:$(UUID)}.name set from storage fossil_frights:session player_name
$data modify storage fossil_frights:temple_run best{uuid:$(UUID)}.name set from storage fossil_frights:session player_name
