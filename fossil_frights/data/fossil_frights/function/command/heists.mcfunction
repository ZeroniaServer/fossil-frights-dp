# Compatibility command entrypoint; selection is owned by the settings system.
execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/cannot_start_while_spectating
execute if entity @s[gamemode=spectator] run return 0
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] run function fossil_frights:join/guard/enter
execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/heists_enable_after_start
execute unless score $game_running ff_game_state matches 1 run return 0
function fossil_frights:game/start_room/settings/gamemode/heists/click
