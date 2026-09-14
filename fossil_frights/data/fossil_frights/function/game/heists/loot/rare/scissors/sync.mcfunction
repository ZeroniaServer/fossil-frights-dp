execute unless score $loot_misplaced_scissors ff_heist_loot_state matches 1..2 run function fossil_frights:game/heists/loot/rare/scissors/reset_location
execute if score $loot_misplaced_scissors ff_heist_loot_state matches 2 run kill @e[type=minecraft:interaction,tag=ff_heist_loot_misplaced_scissors_click]
execute if score $loot_misplaced_scissors ff_heist_loot_state matches 2 as @e[type=minecraft:item_display,tag=fh_scissors,tag=ff_heist_scissors_active,limit=1] run data merge entity @s {view_range:0f}
execute if score $loot_misplaced_scissors ff_heist_loot_state matches 1 unless entity @e[type=minecraft:item_display,tag=fh_scissors,tag=ff_heist_scissors_active,limit=1] run kill @e[type=minecraft:interaction,tag=ff_heist_loot_misplaced_scissors_click]
execute if score $loot_misplaced_scissors ff_heist_loot_state matches 1 unless entity @e[type=minecraft:item_display,tag=fh_scissors,tag=ff_heist_scissors_active,limit=1] as @e[type=minecraft:item_display,tag=fh_scissors,sort=random,limit=1] run tag @s add ff_heist_scissors_active
execute if score $loot_misplaced_scissors ff_heist_loot_state matches 1 as @e[type=minecraft:item_display,tag=fh_scissors,tag=!ff_heist_scissors_active] run data merge entity @s {view_range:0f}
execute if score $loot_misplaced_scissors ff_heist_loot_state matches 1 as @e[type=minecraft:item_display,tag=fh_scissors,tag=ff_heist_scissors_active,limit=1] run data merge entity @s {view_range:1f}
execute if score $loot_misplaced_scissors ff_heist_loot_state matches 1 run function fossil_frights:game/heists/loot/rare/scissors/sticky_note/show
execute if score $loot_misplaced_scissors ff_heist_loot_state matches 2 run function fossil_frights:game/heists/loot/rare/scissors/sticky_note/hide
execute if score $loot_misplaced_scissors ff_heist_loot_state matches 1 unless entity @e[type=minecraft:interaction,tag=ff_heist_loot_misplaced_scissors_click,limit=1] run function fossil_frights:game/heists/loot/rare/scissors/spawn
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_misplaced_scissors_click,tag=!ff_heist_heavy_loot_click] run tag @s add ff_heist_heavy_loot_click
