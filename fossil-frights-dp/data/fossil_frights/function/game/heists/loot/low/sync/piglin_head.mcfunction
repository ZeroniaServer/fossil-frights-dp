execute unless score $loot_piglin_head ff_heist_loot_state matches 1 run kill @e[type=minecraft:interaction,tag=ff_heist_loot_piglin_head_click]
execute if score $loot_piglin_head ff_heist_loot_state matches 1 unless entity @e[type=minecraft:interaction,tag=ff_heist_loot_piglin_head_click,limit=1] run function fossil_frights:game/heists/loot/low/spawn/piglin_head
execute if score $loot_piglin_head ff_heist_loot_state matches 0..1 run setblock -37 84 78 minecraft:piglin_head[rotation=1]
execute if score $loot_piglin_head ff_heist_loot_state matches 2..3 run setblock -37 84 78 minecraft:air
