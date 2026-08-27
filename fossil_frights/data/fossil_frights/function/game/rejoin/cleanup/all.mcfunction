execute if entity @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_paused] if score $timer_started ff_day matches 1 run function fossil_frights:game/frights/timer/start
execute if entity @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_paused] unless score $timer_started ff_day matches 1 run scoreboard players set $timer_frozen ff_day 0
kill @e[type=minecraft:marker,tag=ff_rejoin_marker]
kill @e[type=minecraft:mannequin,tag=ff_rejoin_ghost]
kill @e[type=minecraft:text_display,tag=ff_rejoin_display]
kill @e[type=minecraft:armor_stand,tag=ff_rejoin_head]
