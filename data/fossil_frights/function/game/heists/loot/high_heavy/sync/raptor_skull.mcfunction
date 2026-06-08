execute unless score $loot_raptor_skull ff_heist_loot_state matches 1 run kill @e[type=minecraft:interaction,tag=ff_heist_loot_raptor_skull_click]
execute if score $loot_raptor_skull ff_heist_loot_state matches 1 unless entity @e[type=minecraft:interaction,tag=ff_heist_loot_raptor_skull_click,limit=1] run function fossil_frights:game/heists/loot/high_heavy/spawn/raptor_skull
execute if score $loot_raptor_skull ff_heist_loot_state matches 0..1 as @e[tag=fh_raptor_skull] run data merge entity @s {view_range:1f}
execute if score $loot_raptor_skull ff_heist_loot_state matches 2..3 as @e[tag=fh_raptor_skull] run data merge entity @s {view_range:0f}
