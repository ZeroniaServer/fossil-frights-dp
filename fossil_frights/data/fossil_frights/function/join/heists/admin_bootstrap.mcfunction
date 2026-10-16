execute if score $active_set ff_game_state matches 0 run function fossil_frights:join/guard/enter
execute unless entity @a[predicate=fossil_frights:player/team/guard,limit=1] run function fossil_frights:join/guard/enter
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:game/start
function fossil_frights:game/heists/activate
function fossil_frights:player/set_team/lobby
tag @s remove ff_fade_tp_active
scoreboard players set @s ff_tp_action 0
scoreboard players set @s ff_tp_delay 0
