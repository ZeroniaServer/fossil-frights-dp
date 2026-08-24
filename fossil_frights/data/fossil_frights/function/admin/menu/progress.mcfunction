execute if predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:admin/menu/heists/progress
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless predicate fossil_frights:game_state/game_running unless entity @a[limit=1,predicate=fossil_frights:player/is_playing] run function fossil_frights:messages/error/no_active_player
execute unless predicate fossil_frights:game_state/game_running unless entity @a[limit=1,predicate=fossil_frights:player/is_playing] run return 0
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:game/start
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:admin/menu/mark_modified
function fossil_frights:admin/menu/mark_modified
scoreboard players set $admin_was_day_active ff_gui 0
execute if score $day_active ff_day matches 1 run scoreboard players set $admin_was_day_active ff_gui 1
execute if score $admin_was_day_active ff_gui matches 1 run function fossil_frights:game/frights/day/completed
execute if score $admin_was_day_active ff_gui matches 0 run function fossil_frights:game/frights/day/next
