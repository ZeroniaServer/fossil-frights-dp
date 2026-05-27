clear @s minecraft:totem_of_undying[minecraft:custom_data={ff_plushie:"trike"}]
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data={ff_plushie:"trike"}] run item replace entity @s armor.head with air
loot give @s loot fossil_frights:items/plushies/trike
