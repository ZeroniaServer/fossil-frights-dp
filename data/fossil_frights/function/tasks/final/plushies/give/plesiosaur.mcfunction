clear @s minecraft:totem_of_undying[minecraft:custom_data={ff_plushie:"plesiosaur"}]
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data={ff_plushie:"plesiosaur"}] run item replace entity @s armor.head with air
function fossil_frights:items/plushies/plesiosaur
function fossil_frights:tasks/final/plushies/give_from_storage {path:"definitions.plushies.plesiosaur"}
