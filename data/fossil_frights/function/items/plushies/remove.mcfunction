$clear @s minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"$(id)"}]
$execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"$(id)"}] run item replace entity @s armor.head with air
