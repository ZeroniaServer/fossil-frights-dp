data remove storage fossil_frights:game_start mannequin
execute store result storage fossil_frights:game_start mannequin.u0 int 1 run data get entity @s UUID[0] 1
execute store result storage fossil_frights:game_start mannequin.u1 int 1 run data get entity @s UUID[1] 1
execute store result storage fossil_frights:game_start mannequin.u2 int 1 run data get entity @s UUID[2] 1
execute store result storage fossil_frights:game_start mannequin.u3 int 1 run data get entity @s UUID[3] 1
data modify storage fossil_frights:game_start mannequin.name set from entity @s bukkit.lastKnownName
function fossil_frights:animations/game_start/create_fake_player_macro with storage fossil_frights:game_start mannequin
function fossil_frights:animations/game_start/apply_name_macro with storage fossil_frights:game_start mannequin
data merge entity @e[type=mannequin,tag=ff_game_start_dummy,limit=1,sort=nearest] {CustomNameVisible:1b}
team join ff_game_start_dummy @e[type=mannequin,tag=ff_game_start_dummy,limit=1,sort=nearest]
