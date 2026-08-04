function fossil_frights:game/party/add_current_if_missing
execute if score $party_current_member ff_game_state matches 0 run function fossil_frights:messages/duos/party_joined
