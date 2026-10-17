$data modify storage fossil_frights:party_record display_players_$(row) append value {player:{}}
$data modify storage fossil_frights:party_record display_players_$(row)[-1].player.id set from storage fossil_frights:party_record pending.uuid
$data modify storage fossil_frights:party_record display_players_$(row) append value " "
function fossil_frights:leaderboards/party_record/append_head_macro with storage fossil_frights:party_record pending
