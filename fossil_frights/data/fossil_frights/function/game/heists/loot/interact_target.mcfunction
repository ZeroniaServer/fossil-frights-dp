# Click Target
execute unless function fossil_frights:game/heists/loot/interact_check run return 0
execute if entity @p[tag=ff_heist_loot_clicker,team=ff_guard,distance=..10] if entity @s[tag=ff_heist_common_loot_click] run function fossil_frights:game/heists/loot/secure_loot/guard_interact
execute if entity @p[tag=ff_heist_loot_clicker,team=ff_guard,distance=..10] if entity @s[tag=ff_heist_heavy_loot_click] run function fossil_frights:game/heists/loot/secure_loot/guard_interact_heavy
execute if entity @p[tag=ff_heist_loot_clicker,team=ff_thief,distance=..10] if entity @s[tag=ff_heist_common_loot_click,tag=ff_heist_loot_secured] run function fossil_frights:game/heists/loot/secure_loot/thief_interact
execute if entity @p[tag=ff_heist_loot_clicker,team=ff_thief,distance=..10] if entity @s[tag=ff_heist_heavy_loot_click,tag=ff_heist_loot_secured] run function fossil_frights:game/heists/loot/secure_loot/thief_interact_heavy
execute if entity @p[tag=ff_heist_loot_clicker,team=ff_thief,distance=..10] if entity @s[tag=ff_heist_loot_misplaced_scissors_click,tag=!ff_heist_loot_secured] run function fossil_frights:game/heists/loot/rare/scissors/route
execute if entity @p[tag=ff_heist_loot_clicker,team=ff_thief,distance=..10] if entity @s[tag=ff_heist_loot_click,tag=!ff_heist_loot_misplaced_scissors_click,tag=!ff_heist_loot_secured] run function fossil_frights:game/heists/loot/route
data remove entity @s interaction
