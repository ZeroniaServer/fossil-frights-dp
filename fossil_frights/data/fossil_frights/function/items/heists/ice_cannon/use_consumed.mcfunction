advancement revoke @s only fossil_frights:items/ice_cannon_remote/consume
tag @s add ff_ice_cannon_remote_restore_pending
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless entity @s[team=ff_guard,gamemode=!spectator] run return 0
execute at @s anchored eyes if block ^ ^0.75 ^0.48 crimson_fence run return run function fossil_frights:player/actionbar/show/generic/ice_cannon_obstructed
execute at @s anchored eyes if block ^ ^ ^ #fossil_frights:obstructs_ice_cannon run return run function fossil_frights:player/actionbar/show/generic/ice_cannon_obstructed
execute at @s anchored eyes if block ^ ^0.2 ^ #fossil_frights:obstructs_ice_cannon run return run function fossil_frights:player/actionbar/show/generic/ice_cannon_obstructed
execute at @s anchored eyes if block ^ ^0.4 ^ #fossil_frights:obstructs_ice_cannon run return run function fossil_frights:player/actionbar/show/generic/ice_cannon_obstructed
execute at @s anchored eyes if block ^ ^0.6 ^ #fossil_frights:obstructs_ice_cannon run return run function fossil_frights:player/actionbar/show/generic/ice_cannon_obstructed
execute at @s anchored eyes if block ^ ^0.75 ^ #fossil_frights:obstructs_ice_cannon run return run function fossil_frights:player/actionbar/show/generic/ice_cannon_obstructed
execute at @s anchored eyes if block ^ ^0.75 ^0.2 #fossil_frights:obstructs_ice_cannon run return run function fossil_frights:player/actionbar/show/generic/ice_cannon_obstructed
execute at @s anchored eyes if block ^ ^0.75 ^0.4 #fossil_frights:obstructs_ice_cannon run return run function fossil_frights:player/actionbar/show/generic/ice_cannon_obstructed
execute at @s anchored eyes if block ^ ^0.75 ^0.6 #fossil_frights:obstructs_ice_cannon run return run function fossil_frights:player/actionbar/show/generic/ice_cannon_obstructed
execute at @s anchored eyes if block ^ ^0.75 ^0.8 #fossil_frights:obstructs_ice_cannon run return run function fossil_frights:player/actionbar/show/generic/ice_cannon_obstructed
execute at @s run function fossil_frights:items/heists/ice_cannon/fire
