execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 16 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 16 run tp @s -1.00 109.00 55.5 180 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 16 run spawnpoint @s -1 109 55
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] unless entity @s[tag=ff_quick_start_thief] run return 0
function fossil_frights:game/heists/setup_current_player
function fossil_frights:join/lobby
team join ff_thief @s
scoreboard players set @s ff_heist_stolen_keys 0
function fossil_frights:game/heists/loadout/thief
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 16
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
scoreboard players set @s ff_join_cooldown 40
function fossil_frights:game/heists/waiting_text/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:messages/heists/joined_thieves
