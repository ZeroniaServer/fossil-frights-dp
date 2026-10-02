tag @e[type=minecraft:mannequin,tag=ff_rejoin_ghost] remove ff_rejoin_cleanup_match
tag @e[type=minecraft:text_display,tag=ff_rejoin_display] remove ff_rejoin_cleanup_match
tag @e[type=minecraft:armor_stand,tag=ff_rejoin_head] remove ff_rejoin_cleanup_match
function fossil_frights:entity/match/active
tag @e[limit=1,type=minecraft:mannequin,tag=ff_rejoin_ghost,predicate=fossil_frights:entity/match/active] add ff_rejoin_cleanup_match
tag @e[limit=1,type=minecraft:text_display,tag=ff_rejoin_display,predicate=fossil_frights:entity/match/active] add ff_rejoin_cleanup_match
tag @e[limit=1,type=minecraft:armor_stand,tag=ff_rejoin_head,predicate=fossil_frights:entity/match/active] add ff_rejoin_cleanup_match
kill @e[type=minecraft:text_display,tag=ff_rejoin_cleanup_match]
execute if entity @s[tag=ff_rejoin_reincarnate] run tp @e[type=minecraft:mannequin,tag=ff_rejoin_cleanup_match] 0 -200 0
execute unless entity @s[tag=ff_rejoin_reincarnate] run kill @e[type=minecraft:mannequin,tag=ff_rejoin_cleanup_match]
kill @e[type=minecraft:armor_stand,tag=ff_rejoin_cleanup_match]
execute if entity @s[tag=ff_rejoin_paused] if score $timer_started ff_day matches 1 run function fossil_frights:game/frights/timer/start
execute if entity @s[tag=ff_rejoin_paused] unless score $timer_started ff_day matches 1 run scoreboard players set $timer_frozen ff_day 0
kill @s
