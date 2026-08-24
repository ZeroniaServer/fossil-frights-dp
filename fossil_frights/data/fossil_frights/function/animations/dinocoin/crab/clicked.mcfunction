advancement revoke @s only fossil_frights:crab_click
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute if entity @a[limit=1,scores={ff_crab_timer=1..}] run return 0
scoreboard players add @s ff_key_cooldown 0
execute unless score @s ff_key_cooldown matches 1.. run function fossil_frights:messages/dinocoin/crab/general_cooldown
execute unless score @s ff_key_cooldown matches 1.. run return 0
execute store result score #crab_coin_count ff_game_state run clear @s *[minecraft:custom_data~{itemID:"dinocoin"}] 0
execute if score #crab_coin_count ff_game_state matches ..1 run function fossil_frights:messages/dinocoin/crab/needs_coins
execute if score #crab_coin_count ff_game_state matches ..1 run return 0
clear @s *[minecraft:custom_data~{itemID:"dinocoin"}] 2
function fossil_frights:messages/dinocoin/crab/success
function fossil_frights:animations/dinocoin/crab/start
