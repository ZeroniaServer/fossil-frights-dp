execute unless score $game_running ff_game_state matches 1 unless entity @a[tag=ff_active] run function fossil_frights:messages/error/no_active_player
execute unless score $game_running ff_game_state matches 1 unless entity @a[tag=ff_active] run return 0
execute unless score $game_running ff_game_state matches 1 run function fossil_frights:game/start
execute unless score $game_running ff_game_state matches 1 run function fossil_frights:admin/menu/mark_modified
function fossil_frights:admin/menu/mark_modified
scoreboard players set $admin_was_day_active ff_gui 0
execute if score $day_active ff_day matches 1 run scoreboard players set $admin_was_day_active ff_gui 1
execute if score $admin_was_day_active ff_gui matches 1 run function fossil_frights:game/day_completed
execute if score $admin_was_day_active ff_gui matches 0 run function fossil_frights:game/next_day
