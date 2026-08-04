execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 15 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 15 run tp @s 20 70 20 0 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 15 run spawnpoint @s 20 70 20
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] run return 0
function fossil_frights:game/heists/setup/current_player
function fossil_frights:join/lobby
team join ff_guard @s
function fossil_frights:game/heists/loadout/guard
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 15
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
scoreboard players set @s ff_join_cooldown 40
function fossil_frights:game/heists/waiting_text/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:messages/heists/joined_guards
