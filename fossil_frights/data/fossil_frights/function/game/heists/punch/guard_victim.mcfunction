advancement revoke @s only fossil_frights:misc/heists_guard_punched
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run return 0
tag @s add ff_heist_punched_guard
execute on attacker run function fossil_frights:game/heists/punch/guard
tag @s remove ff_heist_punched_guard
