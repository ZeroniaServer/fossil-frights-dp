execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/no_game_running
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $heist_round_active ff_game_state matches 1 run function fossil_frights:admin/menu/heists/show
execute unless score $heist_round_active ff_game_state matches 1 run return 0
function fossil_frights:admin/menu/mark_modified
$scoreboard players set $heist_timer ff_heist $(time)
scoreboard players operation $heist_elapsed ff_heist = #heist_full ff_heist
scoreboard players operation $heist_elapsed ff_heist -= $heist_timer ff_heist
execute store result bossbar fossil_frights:bossbar value run scoreboard players get $heist_elapsed ff_heist
scoreboard players set $idle_ticks ff_game_state 0
function fossil_frights:game/heists/timer/update_display
function fossil_frights:admin/menu/heists/timer/show
