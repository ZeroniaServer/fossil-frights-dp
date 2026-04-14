execute if score $active_set ff_game_state matches 0 run return 0
execute as @a store result score @s ff_active_uuid_0 run data get entity @s UUID[0] 1
execute as @a store result score @s ff_active_uuid_1 run data get entity @s UUID[1] 1
execute as @a store result score @s ff_active_uuid_2 run data get entity @s UUID[2] 1
execute as @a store result score @s ff_active_uuid_3 run data get entity @s UUID[3] 1
tag @a[tag=ff_active] remove ff_active
team leave @a[team=ff_active_gold]
execute as @a run function fossil_frights:game/roster/sync_player
team join ff_active_gold @a[tag=ff_active]
scoreboard players set $active_online ff_game_state 0
execute as @a[tag=ff_active] run scoreboard players add $active_online ff_game_state 1
execute if score $run_multiplayer ff_game_state matches 0 unless entity @a[tag=ff_active] run function fossil_frights:game/handle_active_disconnect
execute if score $run_multiplayer ff_game_state matches 1 unless score $active_online ff_game_state = $run_roster_count ff_game_state run function fossil_frights:game/handle_multiplayer_disconnect

