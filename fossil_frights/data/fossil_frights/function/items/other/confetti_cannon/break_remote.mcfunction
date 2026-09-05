playsound minecraft:entity.item.break player @s ~ ~ ~ 0.8 1.1
particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"minecraft:diamond_hoe"}}} ~ ~1 ~ 0.18 0.18 0.18 0.04 8 force @s
execute if items entity @s armor.head *[minecraft:custom_data~{ff_invisimask:{confetti_cannon:true}}] run item modify entity @s armor.head fossil_frights:game/heists/invisimask/remove_confetti_cannon
item replace entity @s weapon.mainhand with air
