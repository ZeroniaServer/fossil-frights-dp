execute positioned 0.0 0.0 16.0 as @e[type=minecraft:area_effect_cloud,tag=ff_session_tracker,dx=0,dy=0,dz=0] run function fossil_frights:player/session/tracker/check
execute as @a unless score @s ff_session_state matches -1 at @s run function fossil_frights:player/session/start
