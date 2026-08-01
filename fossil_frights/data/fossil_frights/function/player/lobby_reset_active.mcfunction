execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 19 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 19 run tp @s 0 80 0 0 0
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] run return 0
function fossil_frights:ant_fight/music/stop
function fossil_frights:parkour/music/stop
function fossil_frights:temple_run/music/stop
function fossil_frights:sulfur_strikers/music/stop
function fossil_frights:join/lobby
tag @s remove ff_forced_spectate
tag @s remove ff_camera_remote_active
tag @s remove ff_muted_chat
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
scoreboard players set @s ff_bat_bug_timer 0
scoreboard players set @s ff_bat_bug_bar 0
title @s actionbar ""
clear @s
clear @s *[custom_data~{ff_any_key:true}]
clear @s minecraft:amethyst_shard[minecraft:custom_data~{ff_dna:true}]
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
attribute @s minecraft:jump_strength base set 0.42
spawnpoint @s 0 80 0
gamemode adventure @s
function fossil_frights:player/effects/lobby_reset
effect give @s minecraft:instant_health 100 0 true
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 19
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
