execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 11 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 11 if score $ancient_portal_dest ff_task_state matches 1 run tp @s 4 85 66 20 25
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 11 if score $ancient_portal_dest ff_task_state matches 2 run tp @s -12.5 86.5 58 0 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 11 if score $ancient_portal_dest ff_task_state matches 3 run tp @s -25 70 12 -90 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 11 if score $ancient_portal_dest ff_task_state matches 4 run tp @s 0 104 74 -180 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 11 if score $ancient_portal_dest ff_task_state matches 5 run tp @s 0 94 10 0 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 11 run playsound minecraft:block.portal.travel player @s ~ ~ ~ 0.9 1.05
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] run return 0
advancement grant @s only fossil_frights:02_achievements/portal_travel
execute store result score $ancient_portal_dest ff_task_state run random value 1..5
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 11
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
