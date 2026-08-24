execute if score $active_set ff_game_state matches 0 run function fossil_frights:join/guard/enter
execute unless entity @a[team=ff_guard,limit=1] run function fossil_frights:join/guard/enter
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:game/start
function fossil_frights:game/heists/activate
function fossil_frights:messages/heists/joined_guards
