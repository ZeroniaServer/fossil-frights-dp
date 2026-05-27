clear @s minecraft:totem_of_undying[minecraft:custom_data={ff_plushie:"sniffer"}]
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data={ff_plushie:"sniffer"}] run item replace entity @s armor.head with air
function fossil_frights:items/plushies/sniffer
function fossil_frights:tasks/final/plushies/give_from_storage {path:"definitions.plushies.sniffer"}
