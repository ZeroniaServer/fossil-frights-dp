execute unless predicate fossil_frights:game_state/game_running unless entity @a[limit=1,tag=ff_in_queue] run return run function fossil_frights:join/heists/start_thief
execute unless predicate fossil_frights:game_state/game_running run tellraw @s {"text":"⚠ You can choose a Heists team only in the waiting lobby.","color":"red"}
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless predicate fossil_frights:game_state/heist_mode_active run tellraw @s {"text":"⚠ You can choose a team only while Heists is active.","color":"red"}
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute if score $heist_round_active ff_game_state matches 1.. run function fossil_frights:messages/error/game_in_progress
execute if score $heist_round_active ff_game_state matches 1.. run return 0
execute if score $settings_randomizer_on ff_game_state matches 1 run tellraw @s {"text":"⚠ Team choice is disabled while the Heists randomizer is on. Use /join or /join random.","color":"red"}
execute if score $settings_randomizer_on ff_game_state matches 1 run return 0
function fossil_frights:join/heists/thief
