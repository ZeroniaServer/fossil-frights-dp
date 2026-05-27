clear @s minecraft:totem_of_undying[minecraft:custom_data={ff_plushie:"t_rex"}]
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data={ff_plushie:"t_rex"}] run item replace entity @s armor.head with air
function fossil_frights:items/plushies/t_rex
function fossil_frights:tasks/final/plushies/give_from_storage {path:"definitions.plushies.t_rex"}
