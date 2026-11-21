execute unless predicate fossil_frights:player/is_playing run return 0
execute if entity @s[gamemode=spectator] run return 0
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless entity @s[predicate=fossil_frights:player/team/thief] run return 0
execute if score $heist_round_active ff_game_state matches 1.. run return 0
execute unless function fossil_frights:game/heists/waiting_text/rate_limit run return 0
scoreboard players enable @s challenge
$trigger challenge set $(amount)
