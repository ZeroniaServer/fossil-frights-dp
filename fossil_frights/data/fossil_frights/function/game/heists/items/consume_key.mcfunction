scoreboard players reset @s ff_key_cooldown

execute if items entity @s weapon.mainhand *[custom_data~{itemID:"key"}] run return run item modify entity @s weapon.mainhand fossil_frights:deduct_1
execute if items entity @s weapon.offhand *[custom_data~{itemID:"key"}] run return run item modify entity @s weapon.offhand fossil_frights:deduct_1
return run clear @s *[custom_data~{itemID:"key"}] 1
