function fossil_frights:entity/match/active
kill @e[limit=1,type=minecraft:marker,tag=ff_run_member,predicate=fossil_frights:entity/match/active]
scoreboard players remove $party_member_count ff_game_state 1
execute if score $party_member_count ff_game_state matches ..0 run scoreboard players set $party_member_count ff_game_state 0
