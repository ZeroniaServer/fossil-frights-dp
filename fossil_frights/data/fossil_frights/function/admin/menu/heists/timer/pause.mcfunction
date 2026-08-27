function fossil_frights:admin/menu/mark_modified
execute if score $timer_frozen ff_day matches 0 run function fossil_frights:game/heists/timer/sync
scoreboard players set $timer_frozen ff_day 1
scoreboard players set $idle_ticks ff_game_state 0
function fossil_frights:admin/menu/heists/timer/show
