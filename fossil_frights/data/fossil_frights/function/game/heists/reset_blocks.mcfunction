function fossil_frights:game/heists/day_tracker/restore
fill -5 109 52 -5 111 54 minecraft:oxidized_copper_bars
fill 0 111 51 0 109 51 minecraft:oxidized_copper_bars
fill 2 109 52 2 111 54 minecraft:oxidized_copper_bars
execute if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:game/heists/waiting_text/show
