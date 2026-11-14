execute at @s run particle entity_effect{color:0x007BFB00} ~ ~1 ~ 0 0 0 0 1 force @s
scoreboard players add @s[scores={ff_chimney_smoke_deactivate_tick=0..}] ff_chimney_smoke_deactivate_tick 1
execute if score @s ff_chimney_smoke_deactivate_tick matches 20.. run return run scoreboard players reset @s ff_chimney_smoke_deactivate_tick
execute if entity @s[scores={ff_chimney_smoke_deactivate_tick=0..}] run return 1

tag @s remove ff_chimney_smoke_active_guard
scoreboard players reset @s ff_chimney_smoke_clear_tick
scoreboard players set @s ff_chimney_smoke_deactivate_tick 0
scoreboard players reset @s ff_chimney_smoke_tick