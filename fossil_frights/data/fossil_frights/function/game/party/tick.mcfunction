execute if score $party_button_lock ff_game_state matches 1.. run scoreboard players remove $party_button_lock ff_game_state 1
execute if score $party_button_lock ff_game_state matches ..0 run scoreboard players set $party_button_lock ff_game_state 0
