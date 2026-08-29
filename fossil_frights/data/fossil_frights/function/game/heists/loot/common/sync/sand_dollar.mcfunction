execute unless score $loot_sand_dollar ff_heist_loot_state matches 1 run kill @e[type=minecraft:interaction,tag=ff_heist_loot_sand_dollar_click]
execute if score $loot_sand_dollar ff_heist_loot_state matches 1 unless entity @e[type=minecraft:interaction,tag=ff_heist_loot_sand_dollar_click,limit=1] run function fossil_frights:game/heists/loot/common/spawn/sand_dollar
execute if score $loot_sand_dollar ff_heist_loot_state matches 0..1 as @e[tag=fh_sand_dollar] run data merge entity @s {view_range:1f}
execute if score $loot_sand_dollar ff_heist_loot_state matches 2..3 as @e[tag=fh_sand_dollar] run data merge entity @s {view_range:0f}
