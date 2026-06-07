execute unless score $loot_popcorn ff_heist_loot_state matches 1 run kill @e[type=minecraft:interaction,tag=ff_heist_loot_popcorn_click]
execute if score $loot_popcorn ff_heist_loot_state matches 1 unless entity @e[type=minecraft:interaction,tag=ff_heist_loot_popcorn_click,limit=1] run function fossil_frights:game/heists/loot/low/spawn/popcorn
