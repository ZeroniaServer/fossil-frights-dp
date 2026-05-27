clear @s minecraft:totem_of_undying[minecraft:custom_data={ff_plushie:"trike"}]
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data={ff_plushie:"trike"}] run item replace entity @s armor.head with air
function fossil_frights:items/plushies/trike
function fossil_frights:tasks/final/plushies/give_from_storage {path:"definitions.plushies.trike"}
