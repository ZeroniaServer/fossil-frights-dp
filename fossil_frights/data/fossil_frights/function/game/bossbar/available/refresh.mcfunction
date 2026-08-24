execute unless predicate fossil_frights:game_state/game_running if score $active_set ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] if score $museum_available ff_game_state matches 0 run function fossil_frights:game/bossbar/available/show
execute unless predicate fossil_frights:game_state/game_running if score $active_set ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] if score $museum_available ff_game_state matches 1 run function fossil_frights:game/bossbar/available/sync_players
execute if predicate fossil_frights:game_state/game_running run function fossil_frights:game/bossbar/available/hide
execute if score $active_set ff_game_state matches 1 run function fossil_frights:game/bossbar/available/hide
execute if entity @a[limit=1,tag=ff_in_queue] run function fossil_frights:game/bossbar/available/hide
