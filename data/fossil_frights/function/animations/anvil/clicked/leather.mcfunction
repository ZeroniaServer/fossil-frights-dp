clear @s *[minecraft:custom_data~{itemID:"leather"}] 1
execute positioned 39 81 62 run function fossil_frights:util/summon_item {nbt:{Tags:["ff_anvil_clicked_input"],PickupDelay:32767},loot_table:"fossil_frights:items/storage/leather"}
