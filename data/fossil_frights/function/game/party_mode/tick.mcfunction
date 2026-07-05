execute if score $party_button_lock ff_game_state matches 1.. run scoreboard players remove $party_button_lock ff_game_state 1
execute if score $party_button_lock ff_game_state matches ..0 run scoreboard players set $party_button_lock ff_game_state 0
scoreboard players set $party_button_cur ff_gui 0
execute if block 11 71 20 minecraft:warped_button[powered=true] run scoreboard players set $party_button_cur ff_gui 1
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 unless score $party_mode_active ff_game_state matches 1 unless score $heist_mode_active ff_game_state matches 1 if score $party_button_cur ff_gui matches 1 unless score $party_button_prev ff_gui matches 1 positioned 11 71 20 as @a[team=ff_guard,distance=..8,limit=1,sort=nearest] run function fossil_frights:messages/settings/party_mode_dialog
scoreboard players operation $party_button_prev ff_gui = $party_button_cur ff_gui
