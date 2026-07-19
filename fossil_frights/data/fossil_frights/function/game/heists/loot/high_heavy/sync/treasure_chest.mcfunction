execute unless score $loot_treasure_chest ff_heist_loot_state matches 1 run kill @e[type=minecraft:interaction,tag=ff_heist_loot_treasure_chest_click]
execute unless score $loot_treasure_chest ff_heist_loot_state matches 1 run kill @e[type=minecraft:shulker,tag=fh_treasure_chest_collidebox]
execute if score $loot_treasure_chest ff_heist_loot_state matches 1 unless entity @e[type=minecraft:interaction,tag=ff_heist_loot_treasure_chest_click,limit=1] run function fossil_frights:game/heists/loot/high_heavy/spawn/treasure_chest
execute if score $loot_treasure_chest ff_heist_loot_state matches 0..1 as @e[tag=fh_treasure_chest] run data merge entity @s {view_range:1f}
execute if score $loot_treasure_chest ff_heist_loot_state matches 2..3 as @e[tag=fh_treasure_chest] run data merge entity @s {view_range:0f}
execute if score $loot_treasure_chest ff_heist_loot_state matches 0..1 run setblock -2 82 66 minecraft:bubble_column[drag=false]
execute if score $loot_treasure_chest ff_heist_loot_state matches 2..3 run setblock -2 82 66 minecraft:water
