execute store result storage fossil_frights:rejoin display.minutes int 1 run scoreboard players get @s ff_rejoin_minutes
execute store result storage fossil_frights:rejoin display.tens int 1 run scoreboard players get @s ff_rejoin_sec_tens
execute store result storage fossil_frights:rejoin display.ones int 1 run scoreboard players get @s ff_rejoin_sec_ones
function fossil_frights:game/rejoin/ghost/countdown_display_macro with storage fossil_frights:rejoin display
