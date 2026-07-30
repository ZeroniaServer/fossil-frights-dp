execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 4 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 4 run tp @s -31.5 78.00 98.5 275 -10
execute if entity @s[tag=ff_tp_dispatch] run return 0

advancement revoke @s only fossil_frights:ant_fight_teleporter_click
execute if entity @s[tag=ff_fade_tp_active] run return 0
execute unless entity @s[gamemode=adventure] run return 0
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 4
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
