tag @s add ff_replace_febreeze_rod.player
execute positioned 0 0 0 summon minecraft:armor_stand run function fossil_frights:game/heists/loot/clear_guard_loot/preserve_damage
tag @s remove ff_replace_febreeze_rod.player
item fill entity @s {type:"minecraft:limit_slots",slot_source:"fossil_frights:player/filtered/febreeze_rod",limit:1} from block 0 0 0 container.0

execute if predicate fossil_frights:player/inventory/febreeze_rod run function fossil_frights:game/heists/loot/clear_guard_loot/replace_febreeze_rod
