tag @s add ff_was_near_crow

execute if items entity @s fossil_frights:player/all *[minecraft:custom_data~{itemID:"dinocoin"}] run function fossil_frights:messages/dinocoin/good_karma/call_shiny
execute unless items entity @s fossil_frights:player/all *[minecraft:custom_data~{itemID:"dinocoin"}] run function fossil_frights:messages/dinocoin/good_karma/call
function fossil_frights:messages/block_npc_messages_for_10_seconds