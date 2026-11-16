execute at @s run particle entity_effect{color:0x007BF9FF} ~ ~1 ~

scoreboard players set @s ff_febreeze_rod_fx 40
effect give @s minecraft:slowness 2 1 true

schedule function fossil_frights:items/febreeze_rod/fx/tick 1t
