scoreboard players set $login_is_run_member ff_game_state 0
tag @s add ff_run_login_source
execute as @e[type=minecraft:marker,tag=ff_run_member] if score @s ff_active_uuid_0 = @a[tag=ff_run_login_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_run_login_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_run_login_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_run_login_source,limit=1] ff_active_uuid_3 run scoreboard players set $login_is_run_member ff_game_state 1
tag @s remove ff_run_login_source
execute unless score $login_is_run_member ff_game_state matches 1 run return 0
execute if score $heist_mode_active ff_game_state matches 1 run return 0
scoreboard players set $login_was_multiplayer ff_game_state 0
execute if score $run_multiplayer ff_game_state matches 1 run scoreboard players set $login_was_multiplayer ff_game_state 1
execute if score $run_multiplayer ff_game_state matches 1 unless score $party_mode_active ff_game_state matches 1 run function fossil_frights:messages/duos/duo_player_left
execute if score $run_multiplayer ff_game_state matches 1 unless score $party_mode_active ff_game_state matches 1 run function fossil_frights:game/reset
execute if score $login_was_multiplayer ff_game_state matches 1 run return 0
function fossil_frights:game/reset/active_disconnect
