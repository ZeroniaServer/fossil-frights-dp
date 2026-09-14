advancement revoke @s only fossil_frights:misc/crane_payment_click
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $crane_wait ff_game_state matches 0 if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_thief,gamemode=!spectator] run scoreboard players set $crane_activation_team ff_game_state 2
execute unless score $crane_wait ff_game_state matches 0 run return 0
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard,gamemode=!spectator] run scoreboard players set $duration_ticks ff_deep_dark_elevator 100
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard,gamemode=!spectator] run scoreboard players set $crane_activation_team ff_game_state 1
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard,gamemode=!spectator] run function fossil_frights:animations/dinocoin/crane/trigger
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard,gamemode=!spectator] positioned 52 68 60 run function fossil_frights:messages/dinocoin/crane/heists_guard_ride
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard,gamemode=!spectator] run return 0
scoreboard players set $duration_ticks ff_deep_dark_elevator 30
scoreboard players set $crane_activation_team ff_game_state 2
execute store result score #crane_coin_count ff_game_state run clear @s *[minecraft:custom_data~{itemID:"dinocoin"}] 0
execute if score #crane_coin_count ff_game_state matches 1.. run clear @s *[minecraft:custom_data~{itemID:"dinocoin"}] 1
execute if score #crane_coin_count ff_game_state matches 1.. run function fossil_frights:run_breakdown/event/add {code:"C",id:"02"}
execute if score #crane_coin_count ff_game_state matches 1.. run function fossil_frights:animations/dinocoin/crane/trigger
execute if score #crane_coin_count ff_game_state matches 1.. run advancement grant @s only fossil_frights:02_achievements/going_up
execute if score #crane_coin_count ff_game_state matches 1.. positioned 52 68 60 run tellraw @s {"translate":"ff.sculkadillo.thanks","with":[{"translate":"ff.sculkadillo","color":"dark_aqua"},{"translate":"%s %s", "with": [{"translate":"ff.dinocoin.number","color":"gold","with":["1"]},{"atlas":"blocks","sprite":"fossil-frights:items/misc/dinocoin"}]},{"translate":"ff.seconds.number","color":"red","with":["10"]}]}
execute unless score #crane_coin_count ff_game_state matches 1.. if score @s ff_msg_cooldown matches 0 run function fossil_frights:animations/dinocoin/crane/play/idle
execute unless score #crane_coin_count ff_game_state matches 1.. if score @s ff_msg_cooldown matches 0 run function fossil_frights:messages/dinocoin/crane/required_1
execute unless score #crane_coin_count ff_game_state matches 1.. if score @s ff_msg_cooldown matches 0 run scoreboard players set @s ff_msg_cooldown 40
