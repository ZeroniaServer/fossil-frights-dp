execute if score $heist_round_active ff_game_state matches 1 run function fossil_frights:admin/menu/heists/show_round
execute if score $heist_round_active ff_game_state matches 1 run return 0
scoreboard players set $heist_players_ready ff_game_state 0
execute if entity @a[tag=ff_heist_thief] if entity @a[tag=ff_heist_guard] run scoreboard players set $heist_players_ready ff_game_state 1
execute if score $heist_players_ready ff_game_state matches 1 run function fossil_frights:admin/menu/heists/show_waiting_ready
execute if score $heist_players_ready ff_game_state matches 1 run return 0
function fossil_frights:admin/menu/heists/show_waiting_force
