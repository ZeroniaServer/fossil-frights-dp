execute if predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:admin/menu/plugin/show
execute if predicate fossil_frights:world/packs_enabled/plugin run return 0
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:admin/menu/quick_start/show
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:admin/menu/heists/show
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute if score $day_active ff_day matches 1 run function fossil_frights:admin/menu/show_day_active
execute if score $day_active ff_day matches 1 run return 0
execute if score $day_current ff_day matches 10.. run function fossil_frights:admin/menu/show_victory
execute if score $day_current ff_day matches 10.. run return 0
execute if score $day_current ff_day matches 0 run function fossil_frights:admin/menu/show_waiting
execute if score $day_current ff_day matches 0 run return 0
scoreboard players operation $admin_next_day ff_gui = $day_current ff_day
scoreboard players add $admin_next_day ff_gui 1
execute store result storage fossil_frights:admin next_day int 1 run scoreboard players get $admin_next_day ff_gui
function fossil_frights:admin/menu/show_break with storage fossil_frights:admin
