execute at @s run particle entity_effect{color:0x007BFD00} ~ ~1 ~ 0 0 0 0 1 force @s
scoreboard players add @s[scores={ff_snowstorm_deactivate_tick=0..}] ff_snowstorm_deactivate_tick 1
execute if score @s ff_snowstorm_deactivate_tick matches 20.. run return run scoreboard players reset @s ff_snowstorm_deactivate_tick
execute if entity @s[scores={ff_snowstorm_deactivate_tick=0..}] run return 1

tag @s remove ff_snowstorm_active_guard
scoreboard players reset @s ff_snowstorm_clear_tick
scoreboard players set @s ff_snowstorm_deactivate_tick 0
scoreboard players reset @s ff_snowstorm_tick