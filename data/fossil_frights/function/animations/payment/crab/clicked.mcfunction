advancement revoke @s only fossil_frights:crab_click
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute if score @s ff_crab_timer matches 1.. run return 0
scoreboard players add @s ff_key_cooldown 0
execute unless score @s ff_key_cooldown matches 1.. run function fossil_frights:messages/crab/general
execute unless score @s ff_key_cooldown matches 1.. run return 0
execute store result score #crab_coin_count ff_game_state run clear @s minecraft:gold_ingot 0
execute if score #crab_coin_count ff_game_state matches ..1 run function fossil_frights:messages/crab/needs_coins
execute if score #crab_coin_count ff_game_state matches ..1 run return 0
clear @s minecraft:gold_ingot 2
function fossil_frights:messages/crab/success
function fossil_frights:animations/payment/crab/start
