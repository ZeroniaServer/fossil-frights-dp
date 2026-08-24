tag @s add ff_join_start_heists
execute if score $active_set ff_game_state matches 0 run function fossil_frights:join/guard/enter
execute unless entity @a[team=ff_guard,limit=1] run function fossil_frights:join/guard/enter
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:game/start
function fossil_frights:game/heists/activate
team join ff_lobby @s
tag @s remove ff_fade_tp_active
scoreboard players set @s ff_tp_action 0
scoreboard players set @s ff_tp_delay 0
scoreboard players set @s ff_join_cooldown 0
tag @s add ff_quick_start_heists_assigning
function fossil_frights:join/heists/thief
tag @s remove ff_quick_start_heists_assigning
tag @s remove ff_join_start_heists
