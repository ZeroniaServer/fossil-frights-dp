execute if entity @s[tag=ff_confetti_remote_update_pending] run function fossil_frights:items/other/confetti_cannon/update_remote_damage
tag @s remove ff_confetti_remote_update_pending
execute if items entity @s weapon.mainhand minecraft:diamond_hoe[custom_data~{ff_confetti_remote:true}] unless items entity @s armor.head * run function fossil_frights:items/other/confetti_cannon/equip_hat
execute unless items entity @s weapon.mainhand minecraft:diamond_hoe[custom_data~{ff_confetti_remote:true}] if items entity @s armor.head minecraft:carved_pumpkin[minecraft:custom_data~{ff_confetti_cannon_hat:true}] run item replace entity @s armor.head with air
