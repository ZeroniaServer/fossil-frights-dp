execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute if score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @a[tag=ff_heist_thief] run function fossil_frights:messages/error/heists_need_players
execute unless entity @a[tag=ff_heist_thief] run return 0
execute unless entity @a[tag=ff_heist_guard] run function fossil_frights:messages/error/heists_need_players
execute unless entity @a[tag=ff_heist_guard] run return 0
function fossil_frights:game/heists/start_round_unchecked
