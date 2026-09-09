# Heavy loot dropped as item entities.
execute as @e[type=minecraft:item,tag=!ff_heist_heavy_loot_drop_biplane] if items entity @s contents *[custom_data~{itemID:"biplane"}] run tag @s add ff_heist_heavy_loot_drop_biplane
execute as @e[type=minecraft:item,tag=!ff_heist_heavy_loot_drop_crab] if items entity @s contents *[custom_data~{itemID:"crab"}] run tag @s add ff_heist_heavy_loot_drop_crab
execute as @e[type=minecraft:item,tag=!ff_heist_heavy_loot_drop_raptor_skull] if items entity @s contents *[custom_data~{itemID:"raptor_skull"}] run tag @s add ff_heist_heavy_loot_drop_raptor_skull
execute as @e[type=minecraft:item,tag=!ff_heist_heavy_loot_drop_t_rex_skull] if items entity @s contents *[custom_data~{itemID:"t_rex_skull"}] run tag @s add ff_heist_heavy_loot_drop_t_rex_skull
execute as @e[type=minecraft:item,tag=!ff_heist_heavy_loot_drop_treasure_chest] if items entity @s contents *[custom_data~{itemID:"treasure_chest"}] run tag @s add ff_heist_heavy_loot_drop_treasure_chest
execute as @e[type=minecraft:item,tag=!ff_heist_heavy_loot_drop_vault] if items entity @s contents *[custom_data~{itemID:"vault"}] run tag @s add ff_heist_heavy_loot_drop_vault
execute as @e[type=minecraft:item,tag=!ff_heist_heavy_loot_drop_velociraptor_statue] if items entity @s contents *[custom_data~{itemID:"velociraptor_statue"}] run tag @s add ff_heist_heavy_loot_drop_velociraptor_statue
execute as @e[type=minecraft:item,tag=!ff_heist_heavy_loot_drop_warden] if items entity @s contents *[custom_data~{itemID:"warden"}] run tag @s add ff_heist_heavy_loot_drop_warden
