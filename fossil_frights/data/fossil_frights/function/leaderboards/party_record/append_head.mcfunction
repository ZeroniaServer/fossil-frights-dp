data modify storage fossil_frights:party_record pending.name set from entity @s CustomName
function fossil_frights:leaderboards/party_record/append_head_macro with storage fossil_frights:party_record pending
scoreboard players add #party_record_head_column ff_lb_calc 1
execute if score #party_record_head_column ff_lb_calc matches 6 run data modify storage fossil_frights:party_record display_players append value {text:"\n"}
execute if score #party_record_head_column ff_lb_calc matches 6 run scoreboard players set #party_record_head_column ff_lb_calc 0
