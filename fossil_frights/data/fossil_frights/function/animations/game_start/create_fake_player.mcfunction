data remove storage fossil_frights:game_start mannequin
execute store result storage fossil_frights:game_start mannequin.u0 int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:game_start mannequin.u1 int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:game_start mannequin.u2 int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:game_start mannequin.u3 int 1 run scoreboard players get @s ff_active_uuid_3
function fossil_frights:player/util/write_username {to:"storage fossil_frights:game_start mannequin.name"}
execute if score $game_start_spawn_mode ff_game_state matches 1 run function fossil_frights:animations/game_start/create_fake_player_macro with storage fossil_frights:game_start mannequin
execute unless score $game_start_spawn_mode ff_game_state matches 1 run function fossil_frights:animations/game_start/create_fake_player_fixed_macro with storage fossil_frights:game_start mannequin
loot replace entity @e[type=mannequin,tag=ff_game_start_dummy,limit=1,sort=nearest] armor.head loot fossil_frights:items/other/security_guard_hat
function fossil_frights:animations/game_start/apply_name_macro with storage fossil_frights:game_start mannequin
data merge entity @e[type=mannequin,tag=ff_game_start_dummy,limit=1,sort=nearest] {CustomNameVisible:true}
team join ff_game_start_dummy @e[type=mannequin,tag=ff_game_start_dummy,limit=1,sort=nearest]
scoreboard players set $game_start_spawn_mode ff_game_state 0
