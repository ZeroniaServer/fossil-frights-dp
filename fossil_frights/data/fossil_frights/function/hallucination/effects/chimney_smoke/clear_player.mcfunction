execute at @s run particle entity_effect{color:0x007BFA00} ~ ~1 ~ 0 0 0 0 1 force @s
scoreboard players add @s[scores={ff_chimney_smoke_clear_tick=0..}] ff_chimney_smoke_clear_tick 1
execute if score @s ff_chimney_smoke_clear_tick matches 20.. run return run scoreboard players reset @s ff_chimney_smoke_clear_tick
execute if entity @s[scores={ff_chimney_smoke_clear_tick=0..}] run return 1

tag @s remove ff_chimney_smoke_active_guard
scoreboard players reset @s ff_chimney_smoke_deactivate_tick
scoreboard players set @s ff_chimney_smoke_clear_tick 0
function fossil_frights:hallucination/effects/fog_marker/cleanup_player_marker
scoreboard players reset @s ff_chimney_smoke_tick