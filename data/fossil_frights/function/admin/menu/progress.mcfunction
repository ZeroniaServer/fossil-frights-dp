execute if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:admin/menu/heists/progress
execute if score $heist_mode_active ff_game_state matches 1 run return 0
execute unless score $game_running ff_game_state matches 1 unless entity @a[limit=1,predicate=fossil_frights:player/is_playing] run function fossil_frights:messages/error/no_active_player
execute unless score $game_running ff_game_state matches 1 unless entity @a[limit=1,predicate=fossil_frights:player/is_playing] run return 0
execute unless score $game_running ff_game_state matches 1 run function fossil_frights:game/start
execute unless score $game_running ff_game_state matches 1 run function fossil_frights:admin/menu/mark_modified
function fossil_frights:admin/menu/mark_modified
scoreboard players set $admin_was_day_active ff_gui 0
execute if score $day_active ff_day matches 1 run scoreboard players set $admin_was_day_active ff_gui 1
execute if score $admin_was_day_active ff_gui matches 1 run function fossil_frights:game/day_completed
execute if score $admin_was_day_active ff_gui matches 0 run function fossil_frights:game/next_day
