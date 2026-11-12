scoreboard players set @s ff_good_karma_nearby 1
execute if items entity @s fossil_frights:player/all *[minecraft:custom_data~{itemID:"dinocoin"}] run function fossil_frights:messages/dinocoin/good_karma/call_shiny
execute unless items entity @s fossil_frights:player/all *[minecraft:custom_data~{itemID:"dinocoin"}] run function fossil_frights:messages/dinocoin/good_karma/call
