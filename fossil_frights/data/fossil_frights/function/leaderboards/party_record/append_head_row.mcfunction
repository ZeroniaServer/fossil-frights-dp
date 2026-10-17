$data modify storage fossil_frights:party_record display_players_$(row) append value {player:{}}
$data modify storage fossil_frights:party_record display_players_$(row)[-1].player.id set from storage fossil_frights:party_record pending.uuid
$data modify storage fossil_frights:party_record display_players_$(row) append value " "
