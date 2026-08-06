execute if score $museum_available ff_game_state matches 0 run return 0
bossbar set fossil_frights:museum_available_spacer visible false
bossbar set fossil_frights:museum_available_icon visible false
bossbar set fossil_frights:museum_available_text visible false
bossbar set fossil_frights:museum_available_spacer players
bossbar set fossil_frights:museum_available_icon players
bossbar set fossil_frights:museum_available_text players
scoreboard players set $museum_available ff_game_state 0
