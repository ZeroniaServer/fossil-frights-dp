execute if score $victory_complete ff_game_state matches 1 run function fossil_frights:messages/error/game_in_progress
execute if score $victory_complete ff_game_state matches 1 run return 0
tag @s add ff_join_random
execute unless score $game_running ff_game_state matches 1 store result score #roll ff_join_balance run random value 0..1
execute unless score $game_running ff_game_state matches 1 if score #roll ff_join_balance matches 0 run return run function fossil_frights:join/heists/start_guard
execute unless score $game_running ff_game_state matches 1 run return run function fossil_frights:join/heists/start_thief
execute unless score $heist_mode_active ff_game_state matches 1 run return run function fossil_frights:command/start
execute if score $heist_round_active ff_game_state matches 1.. run return run function fossil_frights:join/queue/enter
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/cannot_join_heist_team_while_spectating
execute if entity @s[gamemode=spectator] run return 0
execute if score @s ff_join_cooldown matches 1.. run return 0
execute if entity @s[tag=ff_admin_random_target] run team join ff_lobby @s
execute if entity @s[tag=ff_admin_random_target] run tag @s remove ff_fade_tp_active
execute if entity @s[tag=ff_admin_random_target] run scoreboard players set @s ff_tp_action 0
execute if entity @s[tag=ff_admin_random_target] run scoreboard players set @s ff_tp_delay 0
scoreboard players set #guards ff_join_balance 0
scoreboard players set #thieves ff_join_balance 0
execute as @a[team=ff_guard] run scoreboard players add #guards ff_join_balance 1
execute as @a[team=ff_thief] run scoreboard players add #thieves ff_join_balance 1
execute if score #guards ff_join_balance < #thieves ff_join_balance run return run function fossil_frights:join/guard/heist_enter
execute if score #thieves ff_join_balance < #guards ff_join_balance run return run function fossil_frights:join/thief
execute store result score #roll ff_join_balance run random value 0..1
execute if score #roll ff_join_balance matches 0 run return run function fossil_frights:join/guard/heist_enter
function fossil_frights:join/thief
