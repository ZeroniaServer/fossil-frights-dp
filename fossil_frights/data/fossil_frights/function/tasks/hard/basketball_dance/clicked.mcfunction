advancement revoke @s only fossil_frights:tasks/hard/basketball_dance/jukebox_click
execute if predicate fossil_frights:game_state/heist_mode_active if score $loot_basketball ff_heist_loot_state matches 1..2 run function fossil_frights:game/heists/loot/rare/pickup/basketball
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless score $basketball_dance_sel ff_task_state matches 1 run return 0
execute unless score $basketball_dance_done ff_task_state matches 0 run return 0
execute unless entity @s[team=ff_guard] run return 0
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute unless items entity @s weapon.* *[minecraft:custom_data~{itemID:"copper_shuffle"}] run return 0
clear @s *[minecraft:custom_data~{itemID:"copper_shuffle"}] 1
function fossil_frights:tasks/hard/basketball_dance/start_dance
