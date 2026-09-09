advancement revoke @s only fossil_frights:misc/sarcophagus_payment_click
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $sarcophagus_timer ff_game_state matches 0 run return 0
execute store result score #sarcophagus_coin_count ff_game_state run clear @s *[minecraft:custom_data~{itemID:"dinocoin"}] 0
execute if score #sarcophagus_coin_count ff_game_state matches 1.. run clear @s *[minecraft:custom_data~{itemID:"dinocoin"}] 1
execute if score #sarcophagus_coin_count ff_game_state matches 1.. run function fossil_frights:run_breakdown/event/add {code:"C",id:"03"}
execute if score #sarcophagus_coin_count ff_game_state matches 1.. positioned 80 75 81 run function fossil_frights:animations/dinocoin/sarcophagus/activate
execute if score #sarcophagus_coin_count ff_game_state matches ..0 if score @s ff_msg_cooldown matches 0 run function fossil_frights:animations/dinocoin/sarcophagus/play/idle
execute if score #sarcophagus_coin_count ff_game_state matches ..0 if score @s ff_msg_cooldown matches 0 run function fossil_frights:messages/dinocoin/sarcophagus/required_1
execute if score #sarcophagus_coin_count ff_game_state matches ..0 if score @s ff_msg_cooldown matches 0 run scoreboard players set @s ff_msg_cooldown 40
