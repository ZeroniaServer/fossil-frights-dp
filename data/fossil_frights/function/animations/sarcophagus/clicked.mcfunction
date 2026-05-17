advancement revoke @s only fossil_frights:sarcophagus_payment_click
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $sarcophagus_timer ff_game_state matches 0 run return 0
execute store result score #sarcophagus_coin_count ff_game_state run clear @s minecraft:gold_ingot 0
execute if score #sarcophagus_coin_count ff_game_state matches 1.. run clear @s minecraft:gold_ingot 1
execute if score #sarcophagus_coin_count ff_game_state matches 1.. positioned 80 75 81 run function fossil_frights:animations/sarcophagus/activate
execute if score #sarcophagus_coin_count ff_game_state matches ..0 run title @s actionbar [{"text":"1 ","color":"yellow"},{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/cubekoin"},{"text":" CubeKoin ","color":"yellow"},{"text":"Required","color":"red"}]
