data modify storage fossil_frights:party_record pending.name set from entity @s data.name
data modify storage fossil_frights:party_record pending.uuid set from entity @s data.uuid

data modify storage fossil_frights:party_record display_names append value {}
data modify storage fossil_frights:party_record display_names[-1].uuid set from storage fossil_frights:party_record pending.uuid
data modify storage fossil_frights:party_record display_names[-1].name set from storage fossil_frights:party_record pending.name

execute if score #party_record_head_row ff_lb_calc matches 1 run function fossil_frights:leaderboards/party_record/append_head_row {row:1}
execute if score #party_record_head_row ff_lb_calc matches 2 run function fossil_frights:leaderboards/party_record/append_head_row {row:2}
execute if score #party_record_head_row ff_lb_calc matches 3 run function fossil_frights:leaderboards/party_record/append_head_row {row:3}
scoreboard players add #party_record_head_column ff_lb_calc 1
execute if score #party_record_head_column ff_lb_calc matches 6 run scoreboard players set #party_record_head_column ff_lb_calc 0
execute if score #party_record_head_column ff_lb_calc matches 0 if score #party_record_head_row ff_lb_calc matches 1..2 run scoreboard players add #party_record_head_row ff_lb_calc 1
