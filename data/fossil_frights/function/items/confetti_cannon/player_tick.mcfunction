scoreboard players add @s ff_confetti_uses 0
execute if entity @s[tag=ff_confetti_remote_update_pending] run function fossil_frights:items/confetti_cannon/update_remote_damage
tag @s remove ff_confetti_remote_update_pending
execute if data entity @s {SelectedItem:{id:"minecraft:diamond_hoe",components:{"minecraft:custom_data":{ff_confetti_remote:1b}}}} unless data entity @s {Inventory:[{Slot:103b}]} run function fossil_frights:items/confetti_cannon/equip_hat
execute unless data entity @s {SelectedItem:{id:"minecraft:diamond_hoe",components:{"minecraft:custom_data":{ff_confetti_remote:1b}}}} if items entity @s armor.head minecraft:carved_pumpkin[minecraft:custom_data~{ff_confetti_cannon_hat:1b}] run item replace entity @s armor.head with air
