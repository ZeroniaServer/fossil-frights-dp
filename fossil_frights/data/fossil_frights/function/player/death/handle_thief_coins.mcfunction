execute store result score #coins_in_inventory ff_dummy if items entity @s fossil_frights:player/all *[minecraft:custom_data~{itemID:"dinocoin"}]
execute unless score #coins_in_inventory ff_dummy matches 2.. run return 0

playsound minecraft:block.note_block.bell player @a[distance=..10] ~ ~ ~ 1 1.5
loot spawn ~ ~ ~ loot fossil_frights:items/dinocoin
clear @s *[custom_data~{itemID:"dinocoin"}]
