execute as @a[tag=ff_fade_tp_active,scores={ff_fade_tp=1..}] run scoreboard players remove @s ff_fade_tp 1
execute as @a[tag=ff_fade_tp_active,scores={ff_fade_tp=..0}] run function fossil_frights:util/fade/dispatch

