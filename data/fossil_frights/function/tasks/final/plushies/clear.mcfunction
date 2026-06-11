clear @s minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"plesiosaur"}]
clear @s minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"velociraptor"}]
clear @s minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"trike"}]
clear @s minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"t_rex"}]
clear @s minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"gold_t_rex"}]
clear @s minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"pteradactyl"}]
clear @s minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"sniffer"}]
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"plesiosaur"}] run item replace entity @s armor.head with air
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"velociraptor"}] run item replace entity @s armor.head with air
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"trike"}] run item replace entity @s armor.head with air
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"t_rex"}] run item replace entity @s armor.head with air
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"gold_t_rex"}] run item replace entity @s armor.head with air
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"pteradactyl"}] run item replace entity @s armor.head with air
execute if items entity @s armor.head minecraft:totem_of_undying[minecraft:custom_data~{ff_plushie:"sniffer"}] run item replace entity @s armor.head with air
tag @s remove obtained_plesiosaur_plushie
tag @s remove obtained_velociraptor_plushie
tag @s remove obtained_trike_plushie
tag @s remove obtained_t_rex_plushie
tag @s remove obtained_gold_t_rex_plushie
tag @s remove obtained_pteradactyl_plushie
tag @s remove obtained_sniffer_plushie
