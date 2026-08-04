function fossil_frights:messages/duos/party_left_marker
kill @s
scoreboard players remove $party_member_count ff_game_state 1
execute if score $party_member_count ff_game_state matches ..0 run scoreboard players set $party_member_count ff_game_state 0
