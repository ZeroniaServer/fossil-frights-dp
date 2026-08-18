execute unless score $loot_basketball ff_heist_loot_state matches 1..2 run return 0
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless items entity @s weapon.* *[minecraft:custom_data~{itemID:"copper_shuffle"}] run return 0
clear @s *[minecraft:custom_data~{itemID:"copper_shuffle"}] 1
function fossil_frights:tasks/hard/basketball_dance/start_dance
function fossil_frights:game/heists/loot/high/sync/basketball
