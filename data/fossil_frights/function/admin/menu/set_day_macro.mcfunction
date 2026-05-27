execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_active ff_day matches 1 run tellraw @s [{"text":"⚠ ","color":"red"},{"text":"Day can only be set while the game is on break.","color":"red"}]
execute if score $day_active ff_day matches 1 run return 0
function fossil_frights:admin/menu/mark_modified
$scoreboard players set $day_current ff_day $(day)
scoreboard players set $day_active ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_flash ff_day 0
scoreboard players set $idle_ticks ff_game_state 0
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/bossbar/set_break
