advancement revoke @s only fossil_frights:sarcophagus_payment_click
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $sarcophagus_timer ff_game_state matches 0 run return 0
execute store result score #sarcophagus_coin_count ff_game_state run clear @s *[minecraft:custom_data~{itemID:"cubekoin"}] 0
execute if score #sarcophagus_coin_count ff_game_state matches 1.. run clear @s *[minecraft:custom_data~{itemID:"cubekoin"}] 1
execute if score #sarcophagus_coin_count ff_game_state matches 1.. positioned 80 75 81 run function fossil_frights:animations/cubekoin/sarcophagus/activate
execute if score #sarcophagus_coin_count ff_game_state matches ..0 if score @s ff_msg_cooldown matches 0 run title @s actionbar [{"translate":"ff.cubekoins.required","color":"red","with":[{"translate":"%s %s","color":"white","with":[{"translate":"ff.cubekoin.number","with":["1"],"color":"yellow"},{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/cubekoin"}]}]}]
execute if score #sarcophagus_coin_count ff_game_state matches ..0 if score @s ff_msg_cooldown matches 0 run scoreboard players set @s ff_msg_cooldown 40
