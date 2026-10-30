$execute if data storage fossil_frights:leaderboards entries[{uuid:$(uuid)}] run data modify storage fossil_frights:leaderboards entries[{uuid:$(uuid)}].name set from storage fossil_frights:session player_data.name
$data modify storage fossil_frights:ant_fight best{uuid:$(uuid)}.name set from storage fossil_frights:session player_data.name
$data modify storage fossil_frights:parkour best{uuid:$(uuid)}.name set from storage fossil_frights:session player_data.name
$data modify storage fossil_frights:temple_run best{uuid:$(uuid)}.name set from storage fossil_frights:session player_data.name
$execute if data storage fossil_frights:party_record display_names[{uuid:$(uuid)}] run data modify storage fossil_frights:party_record display_names[{uuid:$(uuid)}].name set from storage fossil_frights:session player_data.name
