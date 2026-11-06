execute as @a[predicate=fossil_frights:player/team/guard,predicate=fossil_frights:player/inventory/febreeze_rod] run function fossil_frights:game/heists/loot/clear_guard_loot/replace_febreeze_rod
clear @a[predicate=fossil_frights:player/team/guard] *[minecraft:custom_data~{ff_heist_rules:{delete_on_guard_pickup:true}}|minecraft:custom_data~{ff_heist_rules:{is_loot:true}}]
