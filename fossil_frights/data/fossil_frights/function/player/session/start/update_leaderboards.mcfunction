$execute if data storage fossil_frights:leaderboards entries[{uuid:$(UUID)}] run data modify storage fossil_frights:leaderboards entries[{uuid:$(UUID)}].name set from storage fossil_frights:session player_name
$data modify storage fossil_frights:ant_fight best{uuid:$(UUID)}.name set from storage fossil_frights:session player_name
$data modify storage fossil_frights:parkour best{uuid:$(UUID)}.name set from storage fossil_frights:session player_name
$data modify storage fossil_frights:temple_run best{uuid:$(UUID)}.name set from storage fossil_frights:session player_name
$execute if data storage fossil_frights:party_record display_names[{uuid:$(UUID)}] run data modify storage fossil_frights:party_record display_names[{uuid:$(UUID)}].name set from storage fossil_frights:session player_name
