function fossil_frights:entity/match/active
execute at @e[limit=1,type=minecraft:mannequin,tag=ff_rejoin_ghost,predicate=fossil_frights:entity/match/active] run tp @e[limit=1,type=minecraft:text_display,tag=ff_rejoin_display,predicate=fossil_frights:entity/match/active] ~ ~2.4 ~
execute store result storage fossil_frights:rejoin display.minutes int 1 run scoreboard players get @s ff_rejoin_minutes
execute store result storage fossil_frights:rejoin display.tens int 1 run scoreboard players get @s ff_rejoin_sec_tens
execute store result storage fossil_frights:rejoin display.ones int 1 run scoreboard players get @s ff_rejoin_sec_ones
function fossil_frights:game/rejoin/ghost/countdown_display_macro with storage fossil_frights:rejoin display
