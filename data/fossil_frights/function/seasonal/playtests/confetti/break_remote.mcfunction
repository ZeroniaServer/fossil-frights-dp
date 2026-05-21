playsound minecraft:entity.item.break player @s ~ ~ ~ 0.8 1.1
particle minecraft:item{item:{id:"minecraft:echo_shard",count:1}} ~ ~1 ~ 0.18 0.18 0.18 0.04 8 force @s
execute if items entity @s armor.head minecraft:carved_pumpkin[minecraft:custom_data~{ff_confetti_cannon_hat:1b}] run item replace entity @s armor.head with air
item replace entity @s weapon.mainhand with air
