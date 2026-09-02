# No amount defaults to 1500.
# Use -1 for all loot.
execute unless predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/challenge_heists_only
execute unless predicate fossil_frights:player/is_playing run return 0
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/challenge_heists_only
execute if entity @s[gamemode=spectator] run return 0
execute unless predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:messages/error/challenge_heists_only
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless entity @s[team=ff_thief] run function fossil_frights:messages/error/challenge_only_thieves
execute unless entity @s[team=ff_thief] run return 0
execute if score $heist_round_active ff_game_state matches 1 run function fossil_frights:messages/error/challenge_before_start
execute if score $heist_round_active ff_game_state matches 1 run return 0
execute if score @s challenge matches 1 run return run function fossil_frights:game/heists/challenge/set_goal {amount:1500}
execute if score @s challenge matches 1000 run return run function fossil_frights:game/heists/challenge/set_goal {amount:1000}
execute if score @s challenge matches 1250 run return run function fossil_frights:game/heists/challenge/set_goal {amount:1250}
execute if score @s challenge matches 1500 run return run function fossil_frights:game/heists/challenge/set_goal {amount:1500}
execute if score @s challenge matches 1750 run return run function fossil_frights:game/heists/challenge/set_goal {amount:1750}
execute if score @s challenge matches 2000 run return run function fossil_frights:game/heists/challenge/set_goal {amount:2000}
execute if score @s challenge matches -1 run return run function fossil_frights:game/heists/challenge/select_all
function fossil_frights:messages/error/challenge_invalid_amount
