data modify storage fossil_frights:party_record pending.name set from entity @s data.name
data modify storage fossil_frights:party_record pending.uuid set from entity @s data.uuid

data modify storage fossil_frights:party_record display_names append value {}
data modify storage fossil_frights:party_record display_names[-1].uuid set from storage fossil_frights:party_record pending.uuid
data modify storage fossil_frights:party_record display_names[-1].name set from storage fossil_frights:party_record pending.name

data modify storage fossil_frights:party_record display_players append value {player:{}}
data modify storage fossil_frights:party_record display_players[-1].player.id set from storage fossil_frights:party_record pending.uuid
data modify storage fossil_frights:party_record display_players append value " "

function fossil_frights:leaderboards/party_record/append_head_macro with storage fossil_frights:party_record pending
scoreboard players add #party_record_head_column ff_lb_calc 1
execute if score #party_record_head_column ff_lb_calc matches 6 run data modify storage fossil_frights:party_record display_players append value "\n"
execute if score #party_record_head_column ff_lb_calc matches 6 run scoreboard players set #party_record_head_column ff_lb_calc 0
