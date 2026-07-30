execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 13 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 13 run tp @s 0.5 84.00 -2.5 0 5
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
tag @s add ff_tutorial
scoreboard players set @s ff_tutorial 1
scoreboard players set @s ff_tutorial_scene 1
scoreboard players set @s ff_tutorial_tick 0
function fossil_frights:tutorial/camera/summon
clear @s
item replace entity @s armor.head with air
attribute @s minecraft:scale base set 1
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
gamemode spectator @s
execute at @s as @a[distance=..0.000001,gamemode=spectator,team=ff_spectator] run spectate
spectate @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] @s
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 13
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
