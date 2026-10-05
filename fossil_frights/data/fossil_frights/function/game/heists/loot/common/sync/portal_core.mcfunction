execute unless score $loot_ancient_portal_core ff_heist_loot_state matches 1 run kill @e[type=minecraft:interaction,tag=ff_heist_loot_ancient_portal_core_click]
execute if score $loot_ancient_portal_core ff_heist_loot_state matches 1 unless entity @e[type=minecraft:interaction,tag=ff_heist_loot_ancient_portal_core_click,limit=1] run function fossil_frights:game/heists/loot/common/spawn/ancient_portal_core
execute if score $loot_ancient_portal_core ff_heist_loot_state matches 0..1 as @e[tag=fh_ancient_portal_core] run data merge entity @s {view_range:1f}
execute if score $loot_ancient_portal_core ff_heist_loot_state matches 2..3 as @e[tag=fh_ancient_portal_core] run data merge entity @s {view_range:0f}
