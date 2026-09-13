scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0

execute if items entity @s weapon.mainhand *[custom_data~{itemID:"key"}] run return run item modify entity @s weapon.mainhand fossil_frights:deduct_1
execute if items entity @s weapon.offhand *[custom_data~{itemID:"key"}] run return run item modify entity @s weapon.offhand fossil_frights:deduct_1
return run clear @s *[custom_data~{itemID:"key"}] 1
