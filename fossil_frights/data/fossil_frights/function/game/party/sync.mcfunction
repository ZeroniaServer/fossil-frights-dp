execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute if score $active_set ff_game_state matches 0 run return 0
execute if score $party_sync_grace ff_game_state matches 1.. run return run function fossil_frights:game/party/sync_grace
execute as @a run function fossil_frights:game/party/sync_store_uuid
tag @e[type=minecraft:marker,tag=ff_run_member] remove ff_run_member_online
execute as @a run function fossil_frights:game/party/sync_player
scoreboard players set $active_online ff_game_state 0
execute as @a[team=ff_guard] run scoreboard players add $active_online ff_game_state 1
execute if score $run_multiplayer ff_game_state matches 1 if predicate fossil_frights:game_state/party_mode_active as @e[type=minecraft:marker,tag=ff_run_member,tag=!ff_run_member_online] run function fossil_frights:game/party/handle_member_disconnect
execute if score $run_multiplayer ff_game_state matches 1 if predicate fossil_frights:game_state/party_mode_active unless entity @a[limit=1,team=ff_guard] run return run function fossil_frights:game/reset
execute if score $run_multiplayer ff_game_state matches 0 unless entity @a[limit=1,team=ff_guard] unless entity @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_frights] run function fossil_frights:game/reset/active_disconnect
execute if score $run_multiplayer ff_game_state matches 1 unless predicate fossil_frights:game_state/party_mode_active unless score $active_online ff_game_state = $party_member_count ff_game_state unless entity @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_frights] run function fossil_frights:game/reset/multiplayer_disconnect
