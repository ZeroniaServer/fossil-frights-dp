advancement revoke @s only fossil_frights:crane_payment_click
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $crane_wait ff_game_state matches 0 run return 0
execute store result score #crane_coin_count ff_game_state run clear @s minecraft:gold_ingot 0
execute if score #crane_coin_count ff_game_state matches 2.. run clear @s minecraft:gold_ingot 2
execute if score #crane_coin_count ff_game_state matches 2.. run function fossil_frights:animations/cubekoin/crane/trigger
execute if score #crane_coin_count ff_game_state matches 2.. run advancement grant @s only fossil_frights:02_achievements/going_up
execute if score #crane_coin_count ff_game_state matches 2.. positioned 52 68 60 run tellraw @s ["<",{"color":"dark_aqua","text":"Sculkadillo"},"> Thanks for the ",{"color":"gold","text":"2 CubeKoins "},{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/cubekoin"},",  Now hurry, you have ",{"color":"red","text":"5 seconds"}," to ride the pulley"]
execute if score #crane_coin_count ff_game_state matches ..1 if score @s ff_msg_cooldown matches 0 run title @s actionbar [{"text":"2 ","color":"yellow"},{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/cubekoin"},{"text":" CubeKoins ","color":"yellow"},{"text":"Required","color":"red"}]
execute if score #crane_coin_count ff_game_state matches ..1 if score @s ff_msg_cooldown matches 0 run scoreboard players set @s ff_msg_cooldown 40
