execute if score @s ff_chimney_smoke_deactivate_tick matches 0.. run return fail
execute if score @s ff_chimney_smoke_clear_tick matches 0.. run return fail

scoreboard players add @s ff_chimney_smoke_tick 1
execute at @s if score @s ff_chimney_smoke_tick matches 80.. at @s run particle entity_effect{color:0x007BFAFF} ~ ~1 ~ 0 0 0 0 1 force @s
execute at @s unless score @s ff_chimney_smoke_tick matches 80.. at @s run particle entity_effect{color:0x007BFBFF} ~ ~1 ~ 0 0 0 0 1 force @s