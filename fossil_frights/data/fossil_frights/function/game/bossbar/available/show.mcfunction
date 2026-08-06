bossbar set fossil_frights:museum_available_icon visible true
bossbar set fossil_frights:museum_available_text visible true
scoreboard players set $museum_available ff_game_state 1
function fossil_frights:game/bossbar/available/sync_players
