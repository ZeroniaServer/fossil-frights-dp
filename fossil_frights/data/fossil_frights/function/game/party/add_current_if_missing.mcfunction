scoreboard players set $party_current_member ff_game_state 0
function fossil_frights:entity/match/active
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_run_member,predicate=fossil_frights:entity/match/active] run scoreboard players set $party_current_member ff_game_state 1
execute if score $party_current_member ff_game_state matches 0 run function fossil_frights:game/party/add_current
