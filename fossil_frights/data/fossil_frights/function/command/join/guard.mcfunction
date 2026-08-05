execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] run return run function fossil_frights:join/heists/start_guard
execute unless score $game_running ff_game_state matches 1 run tellraw @s {"text":"⚠ You can choose a Heists team only in the waiting lobby.","color":"red"}
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $heist_mode_active ff_game_state matches 1 run tellraw @s {"text":"⚠ You can choose a team only while Heists is active.","color":"red"}
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute if score $heist_round_active ff_game_state matches 1.. run function fossil_frights:messages/error/game_in_progress
execute if score $heist_round_active ff_game_state matches 1.. run return 0
execute if score $settings_randomizer_on ff_game_state matches 1 run tellraw @s {"text":"⚠ Team choice is disabled while the Heists randomizer is on. Use /join or /join random.","color":"red"}
execute if score $settings_randomizer_on ff_game_state matches 1 run return 0
function fossil_frights:join/heists/guard
