data remove storage fossil_frights:game_start mannequin
data modify storage fossil_frights:uuid this set from entity @s UUID
execute store result storage fossil_frights:game_start mannequin.u0 int 1 run data get storage fossil_frights:uuid this[0] 1
execute store result storage fossil_frights:game_start mannequin.u1 int 1 run data get storage fossil_frights:uuid this[1] 1
execute store result storage fossil_frights:game_start mannequin.u2 int 1 run data get storage fossil_frights:uuid this[2] 1
execute store result storage fossil_frights:game_start mannequin.u3 int 1 run data get storage fossil_frights:uuid this[3] 1
data remove storage fossil_frights:uuid this
data modify storage fossil_frights:game_start mannequin.name set from entity @s bukkit.lastKnownName
execute if score $game_start_spawn_mode ff_game_state matches 1 run function fossil_frights:animations/game_start/create_fake_player_macro with storage fossil_frights:game_start mannequin
execute unless score $game_start_spawn_mode ff_game_state matches 1 run function fossil_frights:animations/game_start/create_fake_player_fixed_macro with storage fossil_frights:game_start mannequin
function fossil_frights:animations/game_start/apply_name_macro with storage fossil_frights:game_start mannequin
data merge entity @e[type=mannequin,tag=ff_game_start_dummy,limit=1,sort=nearest] {CustomNameVisible:1b}
team join ff_game_start_dummy @e[type=mannequin,tag=ff_game_start_dummy,limit=1,sort=nearest]
scoreboard players set $game_start_spawn_mode ff_game_state 0
