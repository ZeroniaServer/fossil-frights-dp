execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
tag @s add ff_chimney_smoke_active_guard
scoreboard players reset @s ff_chimney_smoke_clear_tick
scoreboard players reset @s ff_chimney_smoke_deactivate_tick
execute at @s run particle entity_effect{color:0x007BFBFF} ~ ~1 ~ 0 0 0 0 1 force @s
scoreboard players add @s ff_chimney_smoke_tick 0