execute unless score $loot_claw ff_heist_loot_state matches 1 run kill @e[type=minecraft:interaction,tag=ff_heist_loot_claw_click]
execute if score $loot_claw ff_heist_loot_state matches 1 unless entity @e[type=minecraft:interaction,tag=ff_heist_loot_claw_click,limit=1] run function fossil_frights:game/heists/loot/common/spawn/claw
execute if score $loot_claw ff_heist_loot_state matches 0..1 as @e[type=minecraft:item_display,tag=fh_claw,limit=1] run data merge entity @s {view_range:1f}
execute if score $loot_claw ff_heist_loot_state matches 0..1 run tp @e[type=minecraft:item_display,tag=ff_clawed_present,limit=1] -1.3125 72.75 28.5
execute if score $loot_claw ff_heist_loot_state matches 2..3 as @e[type=minecraft:item_display,tag=fh_claw,limit=1] run data merge entity @s {view_range:0f}
execute if score $loot_claw ff_heist_loot_state matches 2..3 run tp @e[type=minecraft:item_display,tag=ff_clawed_present,limit=1] -1.3125 69.0 28.5
