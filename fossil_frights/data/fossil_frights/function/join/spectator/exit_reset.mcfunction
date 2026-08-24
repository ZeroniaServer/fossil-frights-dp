execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 18 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 18 run tp @s 0 80 0 0 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 18 run gamemode adventure @s
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] run return 0
function fossil_frights:join/lobby
clear @s
item replace entity @s armor.head with air
attribute @s minecraft:scale base reset
stopsound @s music fossil-frights:ff_night_shift
stopsound @s master fossil-frights:ff_night_shift
stopsound @s record fossil-frights:ff_night_shift
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 18
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
spawnpoint @s 0 80 0
function fossil_frights:player/effects/lobby_reset
effect give @s minecraft:instant_health 100 0 true
