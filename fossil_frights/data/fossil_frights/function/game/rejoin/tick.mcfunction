execute unless predicate fossil_frights:game_state/game_running if entity @e[type=minecraft:marker,tag=ff_rejoin_marker] run function fossil_frights:game/rejoin/cleanup/all
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if predicate fossil_frights:game_state/party_mode_active if entity @e[type=minecraft:marker,tag=ff_rejoin_marker] run function fossil_frights:game/rejoin/cleanup/all
execute if predicate fossil_frights:game_state/party_mode_active run return 0
execute if predicate fossil_frights:game_state/heist_mode_active unless score $heist_round_active ff_game_state matches 1 if entity @e[type=minecraft:marker,tag=ff_rejoin_marker] run function fossil_frights:game/rejoin/cleanup/all
execute if predicate fossil_frights:game_state/heist_mode_active unless score $heist_round_active ff_game_state matches 1 run return 0
tag @e[type=minecraft:marker,tag=ff_rejoin_marker] remove ff_rejoin_online
execute unless predicate fossil_frights:game_state/heist_mode_active as @a[team=ff_guard,scores={ff_leave_game_seen=-2147483648..2147483647}] at @s run function fossil_frights:game/rejoin/state/register_frights
execute if predicate fossil_frights:game_state/heist_mode_active if score $heist_round_active ff_game_state matches 1 as @a[team=ff_guard,tag=ff_heist_stat_participant,scores={ff_leave_game_seen=-2147483648..2147483647}] at @s run function fossil_frights:game/rejoin/state/register
execute if predicate fossil_frights:game_state/heist_mode_active if score $heist_round_active ff_game_state matches 1 as @a[team=ff_thief,tag=ff_heist_stat_participant,scores={ff_leave_game_seen=-2147483648..2147483647}] at @s run function fossil_frights:game/rejoin/state/register
execute as @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=!ff_rejoin_online,tag=!ff_rejoin_ghosted] at @s run function fossil_frights:game/rejoin/ghost/disconnect
execute if predicate fossil_frights:game_state/heist_mode_active if score $heist_round_active ff_game_state matches 1 unless entity @a[team=ff_guard] unless entity @a[team=ff_thief] if entity @e[type=minecraft:marker,tag=ff_rejoin_heists_guard,tag=ff_rejoin_ghosted] if entity @e[type=minecraft:marker,tag=ff_rejoin_heists_thief,tag=ff_rejoin_ghosted] run function fossil_frights:game/reset

execute if score $run_multiplayer ff_game_state matches 1 unless predicate fossil_frights:game_state/party_mode_active unless predicate fossil_frights:game_state/heist_mode_active unless entity @a[team=ff_guard,limit=1] if entity @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_frights] run function fossil_frights:game/reset

scoreboard players remove @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_ghosted] ff_rejoin_ticks 1
execute as @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_ghosted] at @s run function fossil_frights:game/rejoin/ghost/countdown
execute as @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_ghosted,scores={ff_rejoin_ticks=..0}] at @s run function fossil_frights:game/rejoin/ghost/expire
