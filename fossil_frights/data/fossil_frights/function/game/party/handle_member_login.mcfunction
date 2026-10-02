scoreboard players set $login_is_run_member ff_game_state 0
function fossil_frights:entity/match/active
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_run_member,predicate=fossil_frights:entity/match/active] run scoreboard players set $login_is_run_member ff_game_state 1
execute unless score $login_is_run_member ff_game_state matches 1 run return 0
execute if score $login_is_run_member ff_game_state matches 1 run return 0
