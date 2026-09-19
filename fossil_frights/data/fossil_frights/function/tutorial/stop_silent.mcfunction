execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 14 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 14 run tp @s 0 80 0 0 0
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] run return 0
tag @s remove ff_tutorial
function fossil_frights:tutorial/camera/kill_owned
function fossil_frights:join/lobby
scoreboard players set @s ff_tutorial 0
scoreboard players set @s ff_tutorial_scene 0
scoreboard players set @s ff_tutorial_tick 0
spectate
clear @s
item replace entity @s armor.head with air
attribute @s minecraft:scale base reset
effect clear @s minecraft:invisibility
title @s actionbar ""
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 14
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
spawnpoint @s 0 80 0
gamemode adventure @s
function fossil_frights:player/protection_enable
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
effect give @s minecraft:instant_health 100 0 true
execute unless entity @s[tag=ff_skip_plushie_restore] run function fossil_frights:items/plushies/restore
