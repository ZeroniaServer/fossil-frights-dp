scoreboard players add @s ff_heist_guard_sneak_ticks 1
scoreboard players set @s ff_heist_guard_unsneak_ticks 0
execute if score @s ff_heist_guard_sneak_ticks matches 240.. run effect give @s minecraft:glowing 2 0 true
execute if score @s ff_heist_guard_sneak_ticks matches 240.. run tag @s add ff_heist_guard_sneak_glowing
