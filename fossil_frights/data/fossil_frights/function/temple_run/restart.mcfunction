execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 6 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 6 run tp @s 89.5 79.00 82.5 -90 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 6 run tag @s add ff_skip_plushie_restore
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 6 run function fossil_frights:temple_run/reset_player
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 6 run tag @s remove ff_skip_plushie_restore
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 6 run tag @s add ff_plushie_restore_queued
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 6 run scoreboard players operation @s ff_temple_run_restart_seen = @s ff_temple_run_restart_use
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] run return 0
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 6
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
