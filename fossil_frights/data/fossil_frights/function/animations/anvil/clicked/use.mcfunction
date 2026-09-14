execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ff_anvil_ingredient:{}}] run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ff_anvil_ingredient:{}}] run swing @s mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ff_anvil_ingredient:{}}] run return run item modify entity @s weapon.mainhand fossil_frights:deduct_1

item replace block 0 0 0 container.0 from entity @s weapon.offhand
swing @s offhand
return run item modify entity @s weapon.offhand fossil_frights:deduct_1
