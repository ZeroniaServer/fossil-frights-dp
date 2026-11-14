scoreboard players add @s ff_snowstorm_tick 1
execute at @s if score @s ff_snowstorm_tick matches 80.. run particle entity_effect{color:0x007BFCFF} ~ ~1 ~ 0 0 0 0 1 force @s
execute at @s unless score @s ff_snowstorm_tick matches 80.. run particle entity_effect{color:0x007BFDFF} ~ ~1 ~ 0 0 0 0 1 force @s