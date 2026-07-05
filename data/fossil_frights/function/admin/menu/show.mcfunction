execute unless score $game_running ff_game_state matches 1 unless entity @a[limit=1,predicate=fossil_frights:player/is_playing] run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 unless entity @a[limit=1,predicate=fossil_frights:player/is_playing] run return 0
execute unless score $game_running ff_game_state matches 1 run function fossil_frights:admin/menu/show_no_game
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:admin/menu/heists/show
execute if score $heist_mode_active ff_game_state matches 1 run return 0
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
