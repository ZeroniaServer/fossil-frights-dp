advancement revoke @s only fossil_frights:misc/heist_waiting_text_click
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute if score $heist_round_active ff_game_state matches 1.. run return 0
execute unless entity @s[team=ff_thief] run return 0
execute unless entity @a[limit=1,team=ff_guard] run return 0
execute store result score #gametime ff_button_unpress_timestamp run time query gametime
scoreboard players operation $heist_ready_click_diff ff_button_unpress_timestamp = #gametime ff_button_unpress_timestamp
scoreboard players operation $heist_ready_click_diff ff_button_unpress_timestamp -= $heist_ready_click_at ff_button_unpress_timestamp
execute if score $heist_ready_click_diff ff_button_unpress_timestamp matches ..19 run return 0
scoreboard players operation $heist_ready_click_at ff_button_unpress_timestamp = #gametime ff_button_unpress_timestamp
execute if score $heist_thieves_ready ff_game_state matches 1 run return run function fossil_frights:game/heists/waiting_text/unready
scoreboard players set $heist_thieves_ready ff_game_state 1
function fossil_frights:messages/heists/thieves_ready
function fossil_frights:game/heists/waiting_text/refresh
function fossil_frights:game/start_room/day_button/refresh
