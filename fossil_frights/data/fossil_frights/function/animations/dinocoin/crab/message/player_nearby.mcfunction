tag @s add ff_was_near_crab

scoreboard players add @s ff_key_cooldown 0
execute if score @s ff_key_cooldown matches 1.. run function fossil_frights:messages/dinocoin/crab/general
execute unless score @s ff_key_cooldown matches 1.. run function fossil_frights:messages/dinocoin/crab/general_cooldown

function fossil_frights:messages/block_npc_messages_for_10_seconds