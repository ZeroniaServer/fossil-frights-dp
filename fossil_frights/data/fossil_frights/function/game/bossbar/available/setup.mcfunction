bossbar remove fossil_frights:museum_available_icon
bossbar remove fossil_frights:museum_available_text
bossbar add fossil_frights:museum_available_icon [{"text":"\ue125","font":"fossil-frights:icons/museum","color":"white","shadow_color":0}]
bossbar add fossil_frights:museum_available_text [{"translate":"ff.bossbar.available","color":"white"}]
bossbar set fossil_frights:museum_available_icon color blue
bossbar set fossil_frights:museum_available_text color blue
bossbar set fossil_frights:museum_available_icon style progress
bossbar set fossil_frights:museum_available_text style progress
bossbar set fossil_frights:museum_available_icon max 1
bossbar set fossil_frights:museum_available_text max 1
bossbar set fossil_frights:museum_available_icon value 1
bossbar set fossil_frights:museum_available_text value 1
scoreboard players set $museum_available ff_game_state 0
function fossil_frights:game/bossbar/available/refresh
