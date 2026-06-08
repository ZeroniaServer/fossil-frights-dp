execute unless score $loot_lost_key ff_heist_loot_state matches 1 run function fossil_frights:game/heists/loot/high/reset_roots
execute unless score $loot_lost_key ff_heist_loot_state matches 1 run kill @e[type=minecraft:interaction,tag=ff_heist_lost_key_click]
execute if score $loot_lost_key ff_heist_loot_state matches 1 unless entity @e[type=minecraft:interaction,tag=ff_heist_lost_key_click,limit=1] run function fossil_frights:game/heists/loot/high/spawn/lost_key
