advancement revoke @s only fossil_frights:interactions/barytender
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless predicate fossil_frights:player/is_playing run return 0
execute unless predicate fossil_frights:game_state/heist_mode_active unless predicate fossil_frights:player/team/guard run return 0
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[tag=ff_has_dinonog,predicate=fossil_frights:player/team/guard] run return run function fossil_frights:key/lock/dinonog_denied
execute unless items entity @s fossil_frights:player/all *[minecraft:custom_data~{itemID:"dinocoin"}] run return run function fossil_frights:animations/dinocoin/barytender/no_coin
execute if predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:player/team/thief store result score #barytender_given ff_game_state run loot give @s loot fossil_frights:items/heists/evilnog
execute unless predicate fossil_frights:player/team/thief store result score #barytender_given ff_game_state run loot give @s loot fossil_frights:items/storage/dinonog
execute unless score #barytender_given ff_game_state matches 1.. run return run function fossil_frights:player/actionbar/show/generic/barytender_inventory_full
clear @s *[minecraft:custom_data~{itemID:"dinocoin"}] 1
function fossil_frights:player/coins/add_used_this_run
execute if predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:player/team/guard run tag @s add ff_has_dinonog
function fossil_frights:messages/dinocoin/barytender/success
execute positioned 10 69.55 49 run playsound minecraft:entity.panda.ambient master @a[distance=..16] ~ ~ ~ 1 1
function fossil_frights:messages/block_npc_messages_for_10_seconds
