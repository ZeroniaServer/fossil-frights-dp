execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/no_game_running
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run function fossil_frights:messages/error/no_day_active
execute unless score $day_active ff_day matches 1 run return 0
function fossil_frights:admin/menu/mark_modified
$scoreboard players set $day_timer ff_day $(time)
scoreboard players set $idle_ticks ff_game_state 0
function fossil_frights:game/bossbar/update_day
